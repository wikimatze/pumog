require 'thor'

class Commandline < Thor
  desc "start NAME", "the name of the author"
  def author(name)
    return error "Author name can't be blank!" unless !name.empty?

    say "The name of the module author is #{name}."
  end

  def self.confirm_module(module_name)
    home = Dir.home
    puts "New module will be created in: #{home}/#{module_name}"
  end

  def self.confirm_(module_name)
    home = Dir.home
    puts "New module will be created in: #{home}/#{module_name}"
  end
end
