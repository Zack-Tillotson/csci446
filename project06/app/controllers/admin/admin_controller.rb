class Admin::AdminController < ApplicationController
        
  before_filter :require_user
  
  #filter_access_to :all
  
  def index
    @gameRefs = Game.paginate(:page => params[:page], :order => 'title ASC')
  end
   
private

end
