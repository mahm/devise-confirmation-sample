class User::RegistrationsController < Devise::RegistrationsController
  def confirm
    build_resource(sign_up_params)

    if resource.valid?
      render :confirm
    else
      clean_up_passwords(resource)
      render :new
    end
  end
end