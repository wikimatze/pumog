require 'spec_helper'

describe Messages do
  context "basic information" do
    let(:module_information) {ModuleInformation.new("Ruby", "Matze", "matthias@wikimatze.de")}

    context "#module_name" do
      it "print error message if module_name is blank" do
        module_information.module_name= ''

        message = Messages.module_name_error(module_information.module_name)
        expect(message).to match(/Module name can't be blank!/)
      end

      it "print nothing" do
        message = Messages.module_name_error(module_information.module_name)
        expect(message).to be_nil
      end
    end

    context "#author" do
      it "print error message if author is blank" do
        module_information.author = ''

        message = Messages.author_name_error(module_information.author)
        expect(message).to match(/Author name can't be blank!/)
      end

      it "print nothing" do
        message = Messages.author_name_error(module_information.author)
        expect(message).to be_nil
      end
    end

    context "#email_adress_error" do
      it "print error message if email adress is blank" do
        module_information.email= ''

        message = Messages.email_adress_error(module_information.email)
        expect(message).to match (/Email adress can't be blank!/)
      end

      it "print nothing" do
        message = Messages.email_adress_error(module_information.email)
        expect(message).to be_nil
      end
    end
  end

  context "#confirmation" do
    let(:module_information) {ModuleInformation.new("Ruby", "M", "m@test.de")}
    it "print the path of the generated module" do
      message = Messages.confirm_module_name(module_information.module_name)
      expect(message).to eql("New module will be created in:\n#{Dir.home}/#{module_information.module_name}")
    end

    it "print the creator information" do
      message = Messages.confirm_creator(module_information)
      expect(message).to eql("Author/creator of the new module:\n#{module_information.author} <#{module_information.email}>")
    end

    it "print confirmation" do
      message = Messages.confirm
      expect(message).to eql("Is this correct? [y|n]:")
    end
  end
end
