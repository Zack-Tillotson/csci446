class Member::MemberController < ApplicationController
        
  before_filter :require_user
  
  filter_access_to :all
  
  def index
    @gameRefs = Game.paginate(:conditions => "user_id = #{current_user().id}", :page => params[:page], :order => 'title ASC')
  end
   
private

end
