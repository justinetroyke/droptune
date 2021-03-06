class RegistrationsController < Devise::RegistrationsController

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :show_compilations, :show_singles, :weekly_report)
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end
end