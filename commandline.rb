require 'thor'

class Commandline < Thor
  author = ''
  email_adress = ''
  module_name = ''

  desc "start NAME", "the name of the author"
  def author(name)
    return error "Author name can't be blank!" unless !name.empty?

    say "The name of the module author is #{name}."
    author = name
  end

  desc "email ADRESS", "the email adress of the author"
  def email_adress(adress)
    return error "Email adress can't be blank!" unless !adress.empty?

    say "The email adress of the module author is #{adress}."
    email_adress = adress
  end

  desc "module_name MODULE_NAME", "the name of the module"
  def module_name(name)
    return error "Module name can't be blank!" unless !name.empty?

    puts "The name of the module is #{name}."
    module_name = name
  end
end
