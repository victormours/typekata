require "spec_helper"

describe KatasController do
  describe "#index" do
    let!(:kata) { KataFactory.create }

    it "loads all katas" do
      get :index
      assigns(:katas).should be_present
    end
  end

  describe "#show" do
    let!(:kata) { KataFactory.create }

    it "loads the selected kata" do
      get :show, { id: kata.id }
      assigns(:kata).should == kata
    end
  end

  describe "#new" do
    let!(:javascript) { LanguageFactory.create(name: "javascript") }

    it "loads languages" do
      get :new
      assigns(:languages).should == [javascript]
    end
  end
end
