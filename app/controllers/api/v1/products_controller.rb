class Api::V1::ProductsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_product, only: [ :show ]

  def index
    @products = Product.all
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
