require 'spec_helper'

describe Messages do
  let(:module_information) {ModuleInformation.new("Ruby", "Matze", "matthias@wikimatze.de")}

  context "#module_name" do
    it "print the module name" do
      message = Messages.module_name(module_information.module_name)
      expect(message).to match /The name of the module is Ruby/
    end

    it "print error message if module_name is blank" do
      module_information.module_name= ''

      message = Messages.module_name(module_information.module_name)
      expect(message).to match /Module name can't be blank!/
    end
  end

  context "#author" do
    it "print the name of the author" do
      message = Messages.author_name(module_information.author)
      expect(message).to match /The name of the module author is Matze/
    end

    it "print error message if author is blank" do
      module_information.author = ''

      message = Messages.author_name(module_information.author)
      expect(message).to match /Author name can't be blank!/
    end
  end

  context "#email_adress" do
    it "print the name of the email adress" do
      message = Messages.email_adress(module_information.email)
      expect(message).to match /The email adress of the module author is matthias@wikimatze.de/
    end

    it "print error message if email adress is blank" do
      module_information.email= ''

      message = Messages.email_adress(module_information.email)
      expect(message).to match /Email adress can't be blank!/
    end
  end
end
