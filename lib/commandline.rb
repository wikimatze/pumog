require 'thor'
require 'messages'
require 'module_information'

class Commandline < Thor
  include Thor::Actions

  def self.source_root
    'templates'
  end

  desc "start", "sear something in a pan"
  method_option :nodoc, :type => :boolean, :desc => 'create new puppet module without documentation', :default => false
  def start
    @nodoc= options[:nodoc] ? false : true

    module_name = ''
    while module_name.empty?
      say "What is the name of the module?", :green
      module_name = STDIN.gets.chop
      say Messages.module_name_error(module_name), :red
    end

    author = ''
    while author.empty?
      say "What is the name of the author?", :green
      author = STDIN.gets.chop
      say Messages.author_name_error(author), :red
    end unless !@nodoc

    email = ''
    while email.empty?
      say "What is the email adress of the author?", :green
      email = STDIN.gets.chop
      say Messages.email_adress_error(email), :red
    end unless !@nodoc

    module_information = ModuleInformation.new(module_name, author, email)
    confirm(module_information)
  end

  private
  def confirm(data)
    say Messages.confirm_module_name(data.module_name.downcase), :blue
    say Messages.confirm_creator(data), :yellow
    say Messages.confirm, :yellow

    confirm = STDIN.gets.chop

    while confirm.empty? | confirm.include?('n')
      start
    end

    create_files(data)
  end

  def create_files(data)
    manifests_directory_name = "manifests_tmp"

    empty_directory "files_tmp"
    empty_directory "templates_tmp"
    empty_directory manifests_directory_name

    @module_name = data.module_name.downcase
    @author = data.author
    @email = data.email
    template(
      "init.txt.tt",
      "#{manifests_directory_name}/init.pp"
    )

    template(
      "package.txt.tt",
      "#{manifests_directory_name}/package.pp"
    )

    exit
  end

end
