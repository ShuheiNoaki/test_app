class ProductsController < ApplicationController

before_action :set_product, only: [:show, :update, :edit, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to('/products')
  end

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      flash[:success] = "Product updated!"
      redirect_to('/products')
    else
      render 'edit'
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = "Product destroyed!"
      redirect_to('/products')
    end
  end

  private

    def set_product
      @product = Product.find_by(id: params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :image_name)
    end

end

