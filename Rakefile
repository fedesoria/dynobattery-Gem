require 'rubygems'  
require 'rake'  
require 'echoe'
require 'net/http'
require 'heroku'

Echoe.new('dynobattery', '0.1.3') do |p|  
  p.description     = "Submit request operations for dyno calculations on Heroku"  
  p.url             = "http://github.com/fedesoria/dynobattery"  
  p.author          = "Federico Soria"  
  p.email           = "federico@dospuntocero.com.mx"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }


