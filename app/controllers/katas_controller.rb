class KatasController < ApplicationController
  def index
    @katas = Kata.all
  end
end
