class DocumentsController < ApplicationController

  # GET /documents
  # GET /documents.xml
  def index
    @documents = Document.find(:all)

    @docPages = Document.paginate(:page => params[:page], :order => 'create_date DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documents }
    end
  end

  # GET /documents/1
  # GET /documents/1.xml
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /documents/new
  # GET /documents/new.xml
  def new

    @document = Document.new
    @authorList = Author.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /documents/1/edit
  def edit
    @document = Document.find(params[:id])
    @authorList = Author.find(:all)
  end

  # POST /documents
  # POST /documents.xml
  def create

    @document = Document.new(params[:document])
    @document.edit_count = 0
    @authorList = Author.find(:all)

    respond_to do |format|
      if @document.save
        format.html { redirect_to :back }
        format.xml  { render :xml => @document, :status => :created, :location => @document }
        flash[:notice] = 'Document was successfully created.'
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /documents/1
  # PUT /documents/1.xml
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        @document.edit_count += 1
        @document.update_attributes(params[:document])
        flash[:notice] = 'Document was successfully updated.'
        format.html { redirect_to :back }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.xml
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to(documents_url) }
      format.xml  { head :ok }
    end
  end
end
