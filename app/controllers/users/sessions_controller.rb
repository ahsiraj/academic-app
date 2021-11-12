# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  def new
    super
    #render html: current_user
    #render_to_string html: "Inside app/controllers/users/session_controller.rb#new"
    #render_to_string html: current_user
    #render_to_string html: User.all
    if current_user
      # render_to_string html "admin" if current_user == "admin"
      render_to_string html: "Inside app/controllers/users/session_controller.rb#new"
    end

    #render html: "test"
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  puts "test------------------------------------------------------"

  #ask 12/11 This class was empty till now.
end
