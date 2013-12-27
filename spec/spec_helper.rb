$:.push(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'minitest/unit'

require 'commandline'
require 'module_information'

RSpec.configure do |conf|
  conf.color_enabled = true
  conf.include Minitest::Assertions
end
