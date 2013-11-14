class KatasController < ApplicationController
  def index
    @katas = Kata.all
  end

  def new
    @kata = Kata.new
    @languages = Language.all
  end

  def create
    @kata = Kata.create(params[:kata])
  end

  def show
    @kata = Kata.find(params[:id])
  end
end
