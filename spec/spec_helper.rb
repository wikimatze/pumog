require 'minitest/unit'
require File.expand_path(File.dirname(__FILE__) + "/../commandline.rb")
require File.expand_path(File.dirname(__FILE__) + "/../module_information.rb")


RSpec.configure do |conf|
  conf.color_enabled = true
  conf.include Minitest::Assertions
end
