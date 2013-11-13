require "spec_helper"

describe KatasController do
  describe "#index" do
    let!(:kata) { Kata.create }

    it "loads all katas" do
      puts "getting index"
      get :index
      assigns(:katas).should be_present
    end
  end

  describe "#show" do
    it "loads the selected kata" do
      kata = Kata.create
      get :show, { id: kata.id }
      assigns(:kata).should == kata
    end
  end

  describe "#new" do
    let!(:javascript) { Language.create!(name: "javascript") }
    it "loads languages" do
      get :new
      @languages.should == [javascript]
    end
  end
end
