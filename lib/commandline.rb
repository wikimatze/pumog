require 'thor'


class Commandline < Thor
  include Thor::Actions

  def self.source_root
    'templates'
  end

  desc "start", "sear something in a pan"
  def start
    module_name = ''
    while module_name.empty?
      say "What is the name of the module?"
      module_name = STDIN.gets.chop
      say Messages.module_name(module_name)
    end

    author = ''
    while author.empty?
      say "What is the name of the author?"
      author = STDIN.gets.chop
      say Messages.author_name(author)
    end

    email = ''
    while email.empty?
      say "What is the email adress of the author?"
      email = STDIN.gets.chop
      say Messages.email_adress(email)
    end

    module_information = ModuleInformation.new(module_name, author, email)
    create_files(module_information)
  end

  private
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
  end
end
