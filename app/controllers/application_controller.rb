class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :firstname, :lastname, :phone, :userinfo, :userfield_id, :usertype_id])
            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :firstname, :lastname, :phone, :userfield_id])
            @puserfield = Userfield.all.map { |var| [var.ufield, var.id]  }
            @pusertype = Usertype.all.map { |var| [var.utype, var.id] }
        end
end
