class PrestationsController < ApplicationController

  def new
  end

  def create

    if @massage.save
      redirect_to prestation_path
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

  def method_name

  end

  def
  end

end
