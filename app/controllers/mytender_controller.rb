class MytenderController < ApplicationController
  def show
    @user = User.find(current_user)
    @user.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
    @reports = @user.tender.reports

    @comments = @reports[0].comments
  end

  def edit_report
  end

  def update_report
  end

  def new_report
  end

  def create_report
  end
end
