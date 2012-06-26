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
    @costumes = Costume.all
  end

  def destroy
    @costume = Costume.find(params[:id])
    @costume.destroy
    redirect_to costumes_url
  end
end
