class RooftopsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_rooftop, only: :show

  def index
    @rooftops = Rooftop.all
  end

  def show
  end

  def new
    @rooftop = Rooftop.new
  end

  def create
    @rooftop = Rooftop.new(rooftop_params)
    @rooftop.owner = current_user

    if @rooftop.save
      redirect_to rooftop_path(@rooftop)
    else
      render :new
    end
  end

  private

  def set_rooftop
    @rooftop = Rooftop.find(params[:id])
  end

  def rooftop_params
    params.require(:rooftop).permit(:name, :description, :price, :address)
  end
end
