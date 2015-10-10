class UsersController < ApplicationController
    
before_action :configure_devise_permitted_parameters, if: :devise_controller?
before_action :authenticate_user!
  protected

    def configure_devise_permitted_parameters
        registration_params = [:email, :name, :last_name, :user_type, :state, :car_type, :num_passenger, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
    end
end