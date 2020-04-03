class RooftopsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_rooftop, only: :show

  def index
    @rooftops = Rooftop.all
  end

  def show
  end

  private

  def set_rooftop
    @rooftop = Rooftop.find(params[:id])
  end
end
