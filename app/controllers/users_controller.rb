class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.build_player
  end

  def create
    @user = User.new(allowed_parameters)
    saved_user_type = @user.user_type
    if @user.save
      #session[user_id] = @user.id
      if saved_user_type != 'prospect'
        redirect_to User
      else
        redirect_to root_path
      end
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
        player_attributes: [
            :user_id,
            :aka,
            :gender,
            :grad_year,
            :rank,
            :scholarship,
            :usua_num,
            :jersey_num,
            :jersey_size,
            :shorts_size,
            :drivers_license,
            :strive_status,
            :medical_info,
            :skills,
            :notes,
        ]
    )
  end
end
