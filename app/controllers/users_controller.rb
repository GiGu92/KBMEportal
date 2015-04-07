class UsersController < ApplicationController

  def login

  end
  def edit
  end
  def update
  end
  def profile

    @user = User.find(1)
    @user.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
  end
end
