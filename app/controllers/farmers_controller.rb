class FarmersController < ApplicationController

before_action :set_farmer, only:[:show, :edit, :update, :destroy]

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    @farmer.save
    redirect_to('/farmers')
  end

  def index
    @farmers = Farmer.all
  end

  def show
  end

  def edit
  end

  def update
    if @product.update_attributes(farmer_params)
      flash[:success] = "Farmer updated!"
      redirect_to('/farmers')
    else
      render 'edit'
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = "Farmer destroyed!"
      redirect_to('/farmers')
    end
  end

  private

    def set_farmer
      @farmer = Farmer.find_by(id: params[:id])
    end

    def farmer_params
      params.require(:farmer).permit(:name, :zip, :pref, :city, :address, :image_name)
    end
end
