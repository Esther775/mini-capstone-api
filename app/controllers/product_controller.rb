class ProductController < ApplicationController
  def index
    product = Product.all

    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: { message: product }
  end

  def create
    product = Product.new(
      name: params[:product],
      price: params[:price],
      description: params[:description],
    )
    product.save

    render json: product.as_json
  end
end
