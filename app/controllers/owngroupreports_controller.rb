class OwngroupreportsController < ApplicationController
  def cancel
  end

  def submit
  end

  def show
    @user1 = User.new
    @user1.id = 1
    @user1.username = 'tesztelek'
    @user1.name = 'Teszt Elek'
    @user1.neptun = 'ABC123'
    @user1.email = 'teszt.elek@sch.bme.hu'
    @user1.year = 2012
    @user1.training_code = '5N-A8'
    @user1.activity_outline = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    @user1.ranks_in_groups = { "SchRANDom" => "tag", "Palacsintazo" => "tag", "AC Studio & Live" => "tag", "La'Place Cafe" => "korvezeto", "Dezso buli" => "gazdasagis" }
    

    @tender1 = Tender.new 
    @report1 = Report.new

    @report1.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    @report1.state = 'elbiralatlan'
    @report1.circle = 'Palacsintazo'
   
    @report2 = Report.new
    @report2.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    @report2.state = 'elfogadott'
    @report2.circle = 'AC Studio'
    

    #@comment1 = Comment.new
    #@comment1.comment_text = 'Nagyon szép beszámoló!'
    #@comment1.date = Time.new
    #@comment1.sender = 'Bíráló Ferenc'
#
    #@comment2 = Comment.new
    #@comment2.comment_text = 'Köszönöm!'
    #@comment2.date = Time.new
    #@comment2.sender = 'Tesztelő Aladár'
#
    #@report1.comments = [@comment1, @comment2]
    @tender1.reports = [@report1, @report2]
    @user1.tender = @tender1
  end

end
