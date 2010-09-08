# require 'rubygems'  
# require 'rake'  
# require 'echoe'
require 'net/http'
require 'heroku'

class DynoBattery
  def initialize(app)
    @app = app
  end
  
  def call(env)
    dup._call(env)
  end
  
  def _call(env)
    if defined?(DYNO_DOMAIN)
      if env["PATH_INFO"] =~ /^\/add_dyno/
        add_dyno
        [200, {"Content-Type" => "text/plain"}, ["Dyno +1"]]
      elsif env["PATH_INFO"] =~ /^\/remove_dyno/
        remove_dyno
        [200, {"Content-Type" => "text/plain"}, ["Dyno -1"]]
      else
        uri = URI.parse("http://dyno-battery.heroku.com/")
        http = Net::HTTP.new(uri.host, uri.port)
        http.open_timeout = 3
        http.read_timeout = 3
        start = Time.now  
        status, headers, response = @app.call(env)  
        stop = Time.now
        if defined?(DYNO_USER) && defined?(DYNO_PASSWORD)
          get_dynos
          http.post("/heroku","name=#{DYNO_DOMAIN}&date=#{start.to_s}&time=#{"%10.6f" % (stop - start)}&dyno=#{@heroku_app[:dynos]}")
        else
          http.post("/heroku","name=#{DYNO_DOMAIN}&date=#{start.to_s}&time=#{"%10.6f" % (stop - start)}")
        end
        [status, headers, response]
      end
    else
      [status, headers, response]
    end
  end
  
  

  
  def get_dynos
    setup_heroku_client
    @heroku_app = @heroku.info(DYNO_DOMAIN)
  end
  
  
  def add_dyno
    setup_heroku_client
    get_dynos
    @heroku.set_dynos(@heroku_app[:name],@heroku_app[:dynos] + 1)
  end
  
  def remove_dyno
    setup_heroku_client
    get_dynos
    @heroku.set_dynos(@heroku_app[:name],@heroku_app[:dynos] - 1)
  end
  
  def setup_heroku_client
    @heroku = Heroku::Client.new(DYNO_USER, DYNO_PASSWORD)
  end
  
end



