require 'spec_helper.rb'


describe Commandline do
  context "basic information" do
    it "capture the name of the author" do
      out = capture_io{ Commandline.start ['author', 'Matze']}.join ''
      expect(out).to match(/The name of the module author is Matze/)
    end

    it "capture the email adress of the author" do
      out = capture_io{ Commandline.start ['email_adress', 'matthias@wikimatze.de'] }.join ''
      expect(out).to match(/The email adress of the module author is matthias@wikimatze.de/) end

    it "capture after the module name" do
      out = capture_io{ Commandline.start ['module_name', 'ruby'] }.join ''
      expect(out).to match(/The name of the module is ruby/)
    end
  end

  context "confirmation" do
    xit "new module creation message"
    xit "new module creation"
    xit "validation of input information"
  end

  context "output" do
    context "files" do
      xit "creates files directory"
      xit "creates templates directory"
      xit "creates manifests directory"
      context "manifests" do
        xit "creates init.pp file"
        xit "creates package.pp file"
      end
    end
  end

  context "generation" do
    # tbd
  end
end
