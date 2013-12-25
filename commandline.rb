require 'thor'

class Commandline < Thor
  author = ''
  email_adress = ''
  module_name = ''

  desc "start NAME", "the name of the author"
  def author(name)
    puts "The name of the module author is #{name}."
    author = name
  end

  desc "email ADRESS", "the email adress of the author"
  def email_adress(adress)
    puts "The email adress of the module author is #{adress}."
    email_adress= adress
  end

  desc "module_name MODULE_NAME", "the name of the module"
  def module_name(name)
    puts "The name of the module is #{name}."
  end
end
