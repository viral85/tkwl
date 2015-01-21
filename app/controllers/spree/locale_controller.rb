module Spree
  class LocaleController < Spree::StoreController
    def set
      session[:locale] = params[:locale]
      if !try_spree_current_user.nil?
        user = User.find(spree_current_user.id)
        user.language = params[:locale]
        user.save
      end
      respond_to do |format|
        format.json { render json: true }
        format.html { redirect_to root_path }
      end
    end
  end
end