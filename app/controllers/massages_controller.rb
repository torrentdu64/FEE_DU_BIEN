class MassagesController < ApplicationController

  before_action :set_massage, only: [:show, :create]
  def new
  end

  def create
    @massage = Massage.new(massage_params)
    if @massage.save
      redirect_to user_profil_path
    else
      render :create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end

  private

  def set_massage
    @massage = Massage.find(params[:id])
  end

  def massage_params
    params.require(:massage).permit(:nom, :description, :temps, :prix)
  end
end
