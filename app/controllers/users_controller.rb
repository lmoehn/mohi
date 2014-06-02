class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_parameters)
    if @user.save
      redirect_to User, notice: 'User added successfully'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(allowed_parameters)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to User
  end

  private

  def allowed_parameters
    params.require(:user).permit(
        :first_name,
        :last_name,
        :email,
        :phone1,
        :phone1_type,
        :phone2,
        :phone2_type,
        :group,
        :user_type,
        :user_name,
        :status,
        :admin,
        :password,
    )
  end
end
