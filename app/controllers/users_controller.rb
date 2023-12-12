class UsersController < ApplicationController

  def show
    @breadcrumbs = [
        {content: "#{current_user.username}'s Bookshelves", href: user_path(current_user.username)},
      ]

    @user = User.find_by!(username: params[:username])
    @bookshelves = @user.bookshelves.order(updated_at: :desc)
  end
end
