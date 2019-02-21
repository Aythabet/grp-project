class UsersController < ApplicationController

  def update
    current_user.picture = params[:user][:picture]
    current_user.save
    redirect_to edit_user_registration_path
  end

end
