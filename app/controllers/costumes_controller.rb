# coding: utf-8
class CostumesController < ApplicationController
  def create
    @costume = Costume.new(params[:costume])
    if @costume.save
      redirect_to @costume
    else
      flash[:error] = 'clothesとcolorを選択してください'
      redirect_to :back
    end
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def index
    @costume = Costume.new
  end

  def destroy
    @costume = Costume.find(params[:id])
    @costume.destroy
    redirect_to costumes_url
  end

  def reset
    Costume.delete_all
    redirect_to costumes_url
  end
end
