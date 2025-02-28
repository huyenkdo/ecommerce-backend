class Api::V1::OrdersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User

  def index
    @orders = Order.where(user: current_user, status: 'closed')
  end
end
