require "spec_helper"

describe Kata do
  describe "validation" do
    context "when a language is specified" do
      let(:javascript) { Language.new(name: "javascript") }
      subject(:kata) do
        Kata.new(name: "My kata",
                 text: "This is a kata",
                 description: "A simple kata",
                 language: javascript)
      end

      it "is valid" do
        kata.should be_valid
      end
    end

    context "without a language" do
      subject(:kata) do
        Kata.new(name: "My kata",
                 text: "This is a kata",
                 description: "A simple kata")
      end

      it "is not valid" do
        kata.should_not be_valid
      end
    end
  end
end
