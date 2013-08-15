require "spec_helper"

describe KatasController do
  describe "#index" do
    it "loads all katas" do
      Kata.create
      get :index
      assigns(:katas).should be_present
    end
  end
end
