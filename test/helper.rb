require 'rubygems'
require 'dynobattery'
require 'heroku'
# require "contest"
require "rack/test"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))


class Test::Unit::TestCase
end
