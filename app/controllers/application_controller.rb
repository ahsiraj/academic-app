class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # def after_sign_in_path_for(resource)
  #    if resource.is_a?(AdminUser)
  #     admin_dashboard_path
  #   else
  #      users_path
  #    end
  #  end

  #ask 10/11
  def hello
    render html: "hello, world! appliation_controller"
  end
end
