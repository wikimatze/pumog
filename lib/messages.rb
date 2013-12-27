class Messages
  def self.module_name_error(name)
    "Module name can't be blank!" unless !name.empty?
  end

  def self.author_name_error(author)
    "Author name can't be blank!" unless !author.empty?
  end

  def self.email_adress_error(email)
    "Email adress can't be blank!" unless !email.empty?
  end

  def self.confirm_module_name(name)
    "New module will be created in:\n#{Dir.home}/#{name}"
  end

  def self.confirm_creator(module_information)
    "Author/creator of the new module:\n#{module_information.author} <#{module_information.email}>"
  end

  def self.confirm
    "Is this correct? [y|n]:"
  end
end
