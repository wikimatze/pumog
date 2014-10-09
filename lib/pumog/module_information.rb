module Pumog
  class ModuleInformation
    attr_accessor :name, :author, :email

    def initialize(name= '', author = '', email= '')
      @name = name
      @author = author
      @email = email
    end
  end
end
