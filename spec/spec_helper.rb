require File.expand_path(File.dirname(__FILE__) + "/../commandline.rb")
require 'minitest/unit'

RSpec.configure do |conf|
  conf.color_enabled = true
  conf.include Minitest::Assertions
end
