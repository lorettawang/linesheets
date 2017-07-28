class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
    if !session[:cart_id].nil?
      Cart.find(sessions[:cart_id])
    else
      Cart.new
    end
  end

private

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

end
