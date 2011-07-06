class DragsController < ApplicationController
  # GET /drags
  # GET /drags.xml
  def index
    @drags = Drag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @drags }
    end
  end

  # GET /drags/1
  # GET /drags/1.xml
  def show
    @drag = Drag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @drag }
    end
  end

  # GET /drags/new
  # GET /drags/new.xml
  def new
    @drag = Drag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @drag }
    end
  end

  # GET /drags/1/edit
  def edit
    @drag = Drag.find(params[:id])
  end

  # POST /drags
  # POST /drags.xml
  def create
    @drag = Drag.new(params[:drag])

    respond_to do |format|
      if @drag.save
        format.html { redirect_to(@drag, :notice => 'Drag was successfully created.') }
        format.xml  { render :xml => @drag, :status => :created, :location => @drag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @drag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drags/1
  # PUT /drags/1.xml
  def update
    @drag = Drag.find(params[:id])

    respond_to do |format|
      if @drag.update_attributes(params[:drag])
        format.html { redirect_to(@drag, :notice => 'Drag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @drag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drags/1
  # DELETE /drags/1.xml
  def destroy
    @drag = Drag.find(params[:id])
    @drag.destroy

    respond_to do |format|
      format.html { redirect_to(drags_url) }
      format.xml  { head :ok }
    end
  end
end
