require 'thor'
require 'pumog/messages'
require 'pumog/module_information'

module Pumog
  class Commandline < Thor
    include Thor::Actions

    def self.source_root
      File.expand_path('../templates', File.dirname(__FILE__))
    end

    desc "start\n\n", "creates a new puppet module"
    class_option :nodoc, :desc => 'no documentation', :aliases => '-n', :default => false, :type => :boolean

    def start
      @nodoc= options[:nodoc] ? false : true

      name = ''
      while name.empty?
        say "What is the name of the module?", :green
        name = STDIN.gets.chop
        say Pumog::Messages.module_name_error(name), :red
      end

      author = ''
      while author.empty?
        say "What is the name of the author?", :green
        author = STDIN.gets.chop
        say Pumog::Messages.author_name_error(author), :red
      end unless !@nodoc

      email = ''
      while email.empty?
        say "What is the email adress of the author?", :green
        email = STDIN.gets.chop
        say Pumog::Messages.email_adress_error(email), :red
      end unless !@nodoc

      module_information = Pumog::ModuleInformation.new(name, author, email)
      confirm(module_information)
    end

    private
    def confirm(data)
      say Pumog::Messages.confirm_module_name(data.name.downcase), :blue

      if @nodoc
        say Pumog::Messages.confirm_creator(data), :yellow
        say Pumog::Messages.confirm, :yellow
        confirm = STDIN.gets.chop

        while confirm.empty? | confirm.include?('n')
          start
        end
      end

      create_files(data)
    end

    def create_files(data)
      manifests_directory_name = data.name + "/manifests"

      empty_directory data.name + "/files"
      empty_directory data.name + "/templates"
      empty_directory manifests_directory_name

      @name = data.name.downcase
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
end
