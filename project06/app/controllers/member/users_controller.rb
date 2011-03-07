class Member::UsersController < Member::MemberController

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to("/member/", :notice => 'Successfully updated profile') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit", :notice => "Could not save profile" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
