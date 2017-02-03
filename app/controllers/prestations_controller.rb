class PrestationsController < ApplicationController
  before_action :set_massage,  only:[ :show, :index, :create ]
  before_action :set_accompagnement, only: [:show, :index, :create]

  def new
  end

  def create



    # we need `restaurant_id` to asssociate review with corresponding restaurant


    raise



    # if (@massage.save && @prestation.save) || (@accompagnement.save && @prestation.save)
    #   redirect_to prestation_path
    # else
    #   render :create
    # end
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
    @massage = Massage.find(params[:massage_id])
  end

  def massage_params
    params.require(:massage).permit(:start_time, :end_time)
  end

  def prestation_params
    params.require(:prestation).permit( :id, :date, :user_id, :massage_id, :accompagnement_id, :personnel_id, :created_at, :updated_at, :start_time, :end_time)
  end




end
