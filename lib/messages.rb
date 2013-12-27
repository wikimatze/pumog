class Messages
  def self.module_name(name)
    return "Module name can't be blank!" unless !name.empty?
    "The name of the module is #{name}"
  end

  def self.author_name(author)
    return "Author name can't be blank!" unless !author.empty?
    "The name of the module author is #{author}"
  end

  def self.email_adress(email)
    return "Email adress can't be blank!" unless !email.empty?
    "The email adress of the module author is #{email}"
  end
end
