class Admin::GamesController < Admin::AdminController
  
  
  # GET /users
  # GET /users.xml
  def index
    @games = Game.all
    @gameRefs = Game.paginate(:page => params[:page], :order => 'title ASC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @game = Game.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @game = Game.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @game = Game.new(params[:game])
    
    respond_to do |format|
      if @game.save
        format.html { redirect_to(admin_games_path, :notice => 'Game was successfully created.') }
        format.xml  { render :xml => @game, :status => :created, :location => @game }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to(admin_games_path, :notice => 'Successfully updated ' + @game.title) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit", :notice => "Could not save game" }
        format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to(admin_games_url) }
      format.xml  { head :ok }
    end
  end
end
