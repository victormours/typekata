class KatasController < ApplicationController
  def index
    @katas = Kata.all
  end

  def new
    @kata = Kata.new
  end

  def show
    @kata = Kata.find(params[:id])
  end
end
