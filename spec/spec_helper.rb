$:.push(File.join(File.dirname(__FILE__), '..', 'lib/pumog'))

require 'commandline'
require 'messages'
require 'module_information'

RSpec.configure do |conf|
  conf.color = true
  conf.tty = true
end
