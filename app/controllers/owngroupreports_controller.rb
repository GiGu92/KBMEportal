class OwngroupreportsController < ApplicationController
  def cancel
  end

  def submit
  end

  def show
    @user = User.find(current_user)
    @relations = UserGroupRelation.where(:user_id => @user.id)

    #@vizsgalando = Report.where()
   #@state_none = Report.where(:group => current_user.group).where(:state => "elbiralatlan")

    @reports = @user.tender.reports
    @comments = @reports[0].comments

  end

end
