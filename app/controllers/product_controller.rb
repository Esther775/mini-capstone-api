class ProductController < ApplicationController
  def one_product
    product = Product.all
    render json: { message: product.first }
  end

  def all
    product = Product.all
    render json: { message: product }
  end
end
