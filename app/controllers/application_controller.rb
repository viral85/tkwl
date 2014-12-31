class ApplicationController < ActionController::Base
  helper 'spree/base'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def display_price(product)
    return product.display_price
  end
  
end
