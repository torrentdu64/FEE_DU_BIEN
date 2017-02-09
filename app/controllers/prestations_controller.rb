class PrestationsController < ApplicationController
  before_action :set_massage,  only:[ :show, :index, :create ]
  before_action :set_user, only: [:create, :show ]
  before_action :set_prestation, only: :show
  # before_action :set_accompagnement, only: [:show, :index, :create]

  def new
  end

  def create
    # @massage = Massage.find(params[:massage_id])
    @prestation = Prestation.new(prestation_params)
    @prestation.user = current_user
    @prestation.massage = @massage
    # User.new({ :first_name => 'Jamie', :is_admin => true }, :without_protection => true)
    # @prestation = massage_id: @massage.id, user_id: current_user.id
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    # @massage.prestation = Massage.find(params[:massage_id])

    if  @prestation.save
      redirect_to massage_prestation_path(@massage, @prestation)
    else
      render :show
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    raise

  end

  def index
    @prestations = Prestation.all
  end

  private

  def set_user
    @user = User.find(current_user)
  end

  def set_massage
    @massage = Massage.find(params[:massage_id])
  end

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end

  def massage_params
    params.require(:massage).permit(:id)
  end

  def prestation_params
    params.require(:prestation).permit( :id, :date, :user_id, :massage_id, :accompagnement_id, :personnel_id, :created_at, :updated_at, :start_time, :end_time, pets: [ massage_id: @massage.id, user_id: current_user.id])
  end




end
