class UsersController < ApplicationController

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
    params.require(:users).permit(:name, :username, :neptun, :year, :training_code, :email, :password, :password_confirmation)
  end

  def login
  end
  def edit
  end
  def update
  end
  def profile

    @user = User.find(current_user)
    @user.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
  end
end
