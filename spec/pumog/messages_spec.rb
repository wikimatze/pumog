require 'spec_helper'

describe Pumog::Messages do
  context "basic information" do
    let(:module_information) {Pumog::ModuleInformation.new("Ruby", "Matze", "matthias@wikimatze.de")}

    context "#name" do
      it "print error message if name is blank" do
        module_information.name= ''

        message = Pumog::Messages.module_name_error(module_information.name)
        expect(message).to match(/Module name can't be blank!/)
      end

      it "print nothing" do
        message = Pumog::Messages.module_name_error(module_information.name)
        expect(message).to be_nil
      end
    end

    context "#author" do
      it "print error message if author is blank" do
        module_information.author = ''

        message = Pumog::Messages.author_name_error(module_information.author)
        expect(message).to match(/Author name can't be blank!/)
      end

      it "print nothing" do
        message = Pumog::Messages.author_name_error(module_information.author)
        expect(message).to be_nil
      end
    end

    context "#email_adress_error" do
      it "print error message if email adress is blank" do
        module_information.email= ''

        message = Pumog::Messages.email_adress_error(module_information.email)
        expect(message).to match (/Email adress can't be blank!/)
      end

      it "print nothing" do
        message = Pumog::Messages.email_adress_error(module_information.email)
        expect(message).to be_nil
      end
    end
  end

  context "#confirmation" do
    let(:module_information) {Pumog::ModuleInformation.new("Ruby", "M", "m@test.de")}
    it "print the path of the generated module" do
      message = Pumog::Messages.confirm_module_name(module_information.name)
      expect(message).to eql("New module will be created in:\n#{Dir.home}/#{module_information.name}")
    end

    it "print the creator information" do
      message = Pumog::Messages.confirm_creator(module_information)
      expect(message).to eql("Author/creator of the new module:\n#{module_information.author} <#{module_information.email}>")
    end

    it "print confirmation" do
      message = Pumog::Messages.confirm
      expect(message).to eql("Is this correct? [y|n]:")
    end
  end
end
