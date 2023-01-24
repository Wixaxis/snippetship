# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :config_permitted_params, if: :devise_controller?

  protected

  def config_permitted_params
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :current_password)
    end
  end
end
