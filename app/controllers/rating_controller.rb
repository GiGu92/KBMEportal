class RatingController < ApplicationController
  def show
    @users = User.pluck(:id, :name).sort_by { |user| user[1] }
    selected_id = request.fullpath.split("userid=")[1]
    selected_id ||= @users[0][0]

    @previous_index = 0
    @selected_index = 0
    @next_index = 1
    @users.each_with_index do |user, index|
      if user[0] == selected_id
        @previous_index = index - 1
        @selected_index = index
        @next_index = index + 1
        @previous_index = 0 if @previous_index < 0
        @next_index = @users.length - 1 if @next_index >= @users.length
      end
    end

    @selected_user = User.find(selected_id)
    @selected_user_reports = @selected_user.tender.reports.sort_by { |report| report.group.name }
  end

  def rate
  end
end
