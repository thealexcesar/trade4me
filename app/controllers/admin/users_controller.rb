class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?
  before_action :set_user, only: [:new, :create, :edit, :update]

  # layout 'admin'

  def index
    @users = User.all.order(name: :asc)
  end

  def edit;end
  def new;end
  def show;end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path
      puts "Atualizado!"
    else
      render 'edit'
      puts "Erro!"
    end
  end
  private
  def set_user
    @user = User.find_by_id params[:id]
  end
  def user_params
    params.require(:user).permit(:avatar)
  end
end
