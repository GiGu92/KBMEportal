class MytenderController < ApplicationController
  def show
    @user = User.find(current_user)
    @user.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
    @reports = @user.tender.reports

    @comments = @reports[0].comments
    
   #@comment1 = Comment.new
   #@comment1.comment_text = 'Nagyon szép beszámoló!'
   #@comment1.date = Time.new
   #@comment1.sender = 'Bíráló Ferenc'

   #@comment2 = Comment.new
   #@comment2.comment_text = 'Köszönöm!'
   #@comment2.date = Time.new
   #@comment2.sender = 'Tesztelő Aladár'

   #@report1.comments = [@comment1, @comment2]
    #@tender1.reports = [@report1, @report2]
    #@user1.tender = @tender1
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
