class UsersController < ApplicationController
  def index
    @Users = User.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
