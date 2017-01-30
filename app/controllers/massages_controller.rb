class MassagesController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show, :create, :new, :update, :destroy, :edit ]
  before_action :set_massage, only: [:show, :create, :auth, :new, :create]

  def new
    @massage = Massage.new
  end

  def create
    @massage = Massage.new(massage_params)
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
    @messages = Massage.all
  end

  def auth

  end

  private

  def set_massage
    @massage = Massage.find(params[:id])
  end

  def massage_params
    params.require(:massage).permit(:nom, :description, :temps, :prix)
  end
end
