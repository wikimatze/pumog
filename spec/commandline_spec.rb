require 'spec_helper.rb'

describe Commandline do
  context "questions" do
    xit "asks for the name of the author"
    xit "asks for the email adress of the author"
    xit "asks after the module name"
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
