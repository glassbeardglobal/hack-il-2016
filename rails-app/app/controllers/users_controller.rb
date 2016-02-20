class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @friends = Friendable.where(from_id: @user.id).distinct.limit(10)
    @flag = Friendable.where(to_id: @user.id).where(from_id: current_user.id).count
  end
end
