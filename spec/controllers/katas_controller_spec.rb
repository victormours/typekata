require "spec_helper"

describe KatasController do
  describe "#index" do
    it "loads all katas" do
      Kata.create
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
    it "is successful" do
      get :new
      response.should be_success
    end
  end
end
