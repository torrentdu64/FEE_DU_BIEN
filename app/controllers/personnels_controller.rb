class PersonnelsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show, :create, :new, :update, :destroy, :edit ]
  before_action :set_personnel,  only:[:show, :index ]

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def index
    @personnels = Personnel.all

  end

  def show

  end

  def edit
  end

  private

  def set_personnel
    @personnel = Personnel.find(params[:id])
  end

  def personnel_params
    params.require(:personnel).permit(:nom, :prenom, :description, :horaire, :adresse, :phone)
  end
end
