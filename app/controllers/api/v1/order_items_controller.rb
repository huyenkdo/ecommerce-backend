class Api::V1::OrderItemsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User

  def cart
    @current_order = Order.find_by(user: current_user, status: 'pending')
    return unless @current_order.present?

    items = OrderItem.where(order: @current_order)
    @order_items = items.group_by(&:product).each_with_object([]) do |(k, v), array|
      hash = {}
      hash[:photo_key] = k.photos.first.key
      hash[:name] = k.name
      hash[:quantity] = v.size
      hash[:total_price] = v.size * k.price
      hash[:product_id] = k.id
      array << hash
    end
  end

  def create
    product_id = params[:product_id].to_i
    order = if Order.find_by(user: current_user, status: 'pending')
              Order.find_by(user: current_user, status: 'pending')
            else
              Order.create(user: current_user, status: 'pending')
            end
    order_item = OrderItem.new(product_id: product_id, order: order, quantity: 1)
    render_error unless order_item.save
    order.update(total_price: OrderItem.where(order: order).map { |item| item.quantity * item.product.price }.sum)
    redirect_to api_v1_cart_path
  end

  def checkout
    current_order = current_user.orders.where(status: 'pending').first
    current_order.update(status: 'closed')
    redirect_to api_v1_cart_path
  end

  private

  def render_error
    render json: { errors: @order_item.errors.full_messages },
      status: :unprocessable_entity
  end
end
