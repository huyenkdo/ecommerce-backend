class Api::V1::WishlistsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User

  def index
    @products = Wishlist.where(user: current_user).map(&:product)
  end

  def create
    product_id = params[:product_id].to_i
    if current_user.wishlists.where(product_id: product_id).blank?
      wishlist_item = Wishlist.new(product_id: product_id, user: current_user)
      render_error unless wishlist_item.save
    end
    redirect_to api_v1_wishlists_path
  end
end
