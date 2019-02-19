class UsersController < ApplicationController

  def update
    current_user.picture = params[:user][:picture]
    current_user.save
    redirect_to escorts_path
  end

end
