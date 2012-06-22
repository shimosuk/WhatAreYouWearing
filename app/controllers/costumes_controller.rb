class CostumesController < ApplicationController
  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(params[:costume])
    if @costume.save
      redirect_to @costume
    end
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def index
    @costumes = Costume.all
  end
end
