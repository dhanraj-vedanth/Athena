class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    devise_group :user, contains: [:student, :teacher, :admin]
    include CurrentCart 
    
    before_action :set_cart 
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :phone_number, :address, :major, :cc_name, :cc_number, :cc_exp_date, :cc_cvv, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :phone_number, :address, :major, :cc_name, :cc_number, :cc_exp_date, :cc_cvv, :password, :password_confirmation, :discipline])
    end


  end
  