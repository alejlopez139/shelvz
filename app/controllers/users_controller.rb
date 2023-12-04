class UsersController < ApplicationController

  def show
    @user = User.find_by!(username: params[:username])
    @bookshelves = @user.bookshelves.order(updated_at: :desc)
  end
end
