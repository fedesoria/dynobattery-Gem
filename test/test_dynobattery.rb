# require 'helper'
require 'rubygems'
require 'dynobattery'
require 'heroku'
require 'test/unit'
require "contest"
require "rack/test"

class TestDynobattery < Test::Unit::TestCase

  


  
  test "no constants are setup" do
    battery = DynoBattery.new(nil)
    assert_raise(NameError){ battery.get_dynos  }
  end
  
  test "get number of dynos" do
    setup_test
    battery = DynoBattery.new(nil)
    assert_instance_of(String, battery.get_dynos)
  end
  
  

  
  
  
  
end
