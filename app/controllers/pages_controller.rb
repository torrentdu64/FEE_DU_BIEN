class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  # before_action :set_massage, only: [:home]

  def home

  end

  private

  # def set_massage
  #   @massage = Massage.find(params[:id])
  # end
end
