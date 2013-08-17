require "spec_helper"

describe Views::Katas::Show do
  before do
    @kata = Kata.new(name: "Hello", text: "Hello Kata!")
  end
  # subject(:view) { described_class.new(something) }
  # its(:content){ should == "Hello Kata!"}
end
