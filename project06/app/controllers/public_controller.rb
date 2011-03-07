class PublicController < ActionController::Base
  
  # GET /roles
  # GET /roles.xml
  def index
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roles }
    end
    
  end
  
  # GET /register
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # POST /register
  def create
    @user = User.new(params[:user])
    
    if !verify_recaptcha      
      flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit." 
      render :action => 'new'
      return
    end 

    respond_to do |format|
      if @user.save
        format.html { redirect_to([:admin, @user], :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
