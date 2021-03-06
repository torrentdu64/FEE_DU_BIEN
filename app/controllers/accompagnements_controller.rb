class AccompagnementsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show, :create, :new, :update, :destroy, :edit ]
  before_action :set_accompagnement, only: [:show, :create]

  def new
    @accompagnement = Accompagnement.new
  end

  def create
     @accompagnement = Accompagnement.new(accompagnement_params)
    if @accompagnement.save
      redirect_to user_profil_path
    else
      render :create
    end
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

  def set_accompagnement
    @accompagnement = Accompagnement.find(params[:id])
  end

  def accompagnement_params
    params.require(:accompagnement).permit(:nom, :description, :temps, :prix)
  end
end
