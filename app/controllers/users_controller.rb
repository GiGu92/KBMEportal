class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]

  

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:name, :username, :neptun, :year, :training_code, :email, :password, :password_confirmation)
  end

  def login
  end

  def edit
    @user = User.find(current_user)
    @relations = UserGroupRelation.where(:user_id => @user.id)

    #if @user.update_attributes(:neptun=>params[:neptun], :year => params[:year], :training_code =>params[:training_code])
  end

  def update
    @user = User.find(current_user)
    if @user.update(params[:user])
      redirect_to '/users/profile'
    else
      render "edit"
    end
  end
  
  def profile
    @user = User.find(current_user)
    @relations = UserGroupRelation.where(:user_id => @user.id)
  end

  def delete
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
