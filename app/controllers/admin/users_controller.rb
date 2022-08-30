class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?

  # layout 'admin'

  def index
  end

  def edit
  end

  def new
  end

  def show
  end
end
