class OwngroupreportsController < ApplicationController
  def cancel
  end

  def submit
  end

  def show
    @user = User.find(current_user)
    @group_id = 3
    @reports = Report.where(:group_id => 3)



    @relations = UserGroupRelation.where(:user_id => @user.id)

    #@honnan = UserGroupRelation.where(:user_id => @user[id], :rank => "körvezető")
    #render plain: honnan.inspect


    #@vizsgalando = Report.where()
   #@state_none = Report.where(:group => current_user.group).where(:state => "elbiralatlan")

    @comments = @reports[0].comments



  end

end
