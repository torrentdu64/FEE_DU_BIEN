class MassagesController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show, :create, :new, :update, :destroy, :edit ]
  before_action :set_massage, only: [:show, :create ]

  def new


  end

  def create
    @massage = Massage.new(massage_params)
  end

  def update
  end

  def edit
    @massage = Massage.new
  end

  def destroy
  end

  def show

    @massage = Massage.new(id: @massage.id, nom: @massage.nom, description: @massage.description, temps: @massage.temps, prix: @massage.prix, created_at: @massage.created_at, updated_at: @massage.updated_at )
    @prestation = Prestation.new(massage_id: @massage.id, user_id: current_user.id)


  end

  def index
    @massages = Massage.all
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
