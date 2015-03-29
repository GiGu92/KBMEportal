class UsersController < ApplicationController
  def login
  end
  def edit
  end
  def update
  end
  def profile
    @user = User.new
    @user.id = 1
    @user.username = 'tesztelek'
    @user.name = 'Teszt Elek'
    @user.neptun = 'ABC123'
    @user.email = 'teszt.elek@sch.bme.hu'
    @user.year = 2012
    @user.training_code = '5N-A8'
    @user.activity_outline = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    @user.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
  end
end
