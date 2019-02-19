class UsersController < ApplicationController

  def update
    current_user.picture = params[:user][:picture]
  end

end
