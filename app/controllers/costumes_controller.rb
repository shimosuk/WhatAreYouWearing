class CostumesController < ApplicationController
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
    @costume = Costume.new
  end
end
