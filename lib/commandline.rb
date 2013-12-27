require 'thor'

class Commandline < Thor
  desc "start NAME", "the name of the author"
  def author(name)
    return error "Author name can't be blank!" unless !name.empty?

    say "The name of the module author is #{name}."
  end

  desc "email ADRESS", "the email adress of the author"
  def email_adress(adress)
    return error "Email adress can't be blank!" unless !adress.empty?

    say "The email adress of the module author is #{adress}."
  end

  desc "module_name MODULE_NAME", "the name of the module"
  def module_name(name)
    return error "Module name can't be blank!" unless !name.empty?

    say "The name of the module is #{@module_name}."
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
