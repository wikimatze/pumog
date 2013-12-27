$:.push(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rake'
require 'rspec/core/rake_task'

desc "Run all tests"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.ruby_opts = %w[-w]
end

task :default => :spec
