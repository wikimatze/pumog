class ModuleInformation
  attr_accessor :module_name, :author, :email

  def initialize(module_name= '', author = '', email= '')
    @module_name = module_name
    @author = author
    @email = email
  end
end
