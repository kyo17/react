class Users::RegistrationsController < Devise::RegistrationsController
  layout "application", only: [:edit, :update]

  protected

  # This method allows to user update
  # the profile without password
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  # After user updates the profile this
  # method redirects to edit profile
  def after_update_path_for(resource)
    edit_user_registration_path
  end
end
