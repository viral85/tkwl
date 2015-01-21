 module Spree
   module Admin
    UsersController.class_eval do

     private
      def user_params
          params.require(:user).permit(:email, :password,
:password_confirmation, :spree_role_ids, :language)

      end

    end
   end
end