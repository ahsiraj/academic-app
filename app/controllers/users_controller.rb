class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:name, :email, :encrypted_password, :role)
    end

end
