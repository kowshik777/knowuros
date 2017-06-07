class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:auth_user).permit(:name, :email, :password, :password_confirmation, :admin)
  end

  def account_update_params
    params.require(:auth_user).permit(:name, :email, :password, :password_confirmation, :current_password, :admin)
  end
end
