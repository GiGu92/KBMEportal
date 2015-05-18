class MytenderController < ApplicationController
  def show
    @user = User.find(current_user)
    @reports = @user.tender.reports
    @i = 2

    @selected_report = @reports[@i]    
    @comments = @selected_report.comments
  end

  def update_report
  end

  def new_report
    new_r = Report.new
    #new_r.tender_id=current_user.tender.id
    
    new_r.text = params[:new_r]["text"]
    new_r.group_id = params[:new_r]["group"]
    new_r.save
    
    
    redirect_to "mytender/show"
  end

end
