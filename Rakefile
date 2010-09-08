

Echoe.new('dynobattery', '0.1.3') do |p|  
  p.description     = "Submit request operations for dyno calculations on Heroku"  
  p.url             = "http://github.com/fedesoria/dynobattery"  
  p.author          = "Federico Soria"  
  p.email           = "federico@dospuntocero.com.mx"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }



# Jeweler
begin
  require 'jeweler'
  require 'net/http'
  require 'heroku'
  require 'dynobattery'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "dynobattery"
    gemspec.summary = "Submit request operations for dyno calculations on Heroku"
    gemspec.description = "Submit request operations for dyno calculations on Heroku"
    gemspec.email = "federico@dospuntocero.com.mx"
    gemspec.homepage = "http://github.com/fedesoria/dynobattery"
    gemspec.authors = ["Federico Soria"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end