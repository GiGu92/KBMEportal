class EvaluationController < ApplicationController
  def show
    @reviewer_group = "RVT" if current_user.authority.level.include? "rvt"
    @reviewer_group = "KB" if current_user.authority.level.include? "kb"

    @reviewerIDs = Authority.where("level LIKE ?", "%" + @reviewer_group.downcase + "%").pluck(:user_id)

    @users = User.pluck(:id, :name).sort_by { |user| user[1] }
    selected_id = request.fullpath.split("userid=")[1].to_i
    selected_id = @users[0][0] if selected_id == 0

    @selected_user = User.find(selected_id)
    @selected_user_reports = @selected_user.tender.reports.sort_by { |report| report.group.name }
  end

  def showtotal
  end

  def finalize
  end
end
