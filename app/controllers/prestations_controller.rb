class PrestationsController < ApplicationController
  before_action :set_massage,  only:[ :show, :index ]


  def new
  end

  def create

    # if @massage.save
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

  def

  end

end
