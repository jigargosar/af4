class ItemsController < ApplicationController
  # GET /items
  # GET /items.xml
  def index
#    @items = Item.all
    @items = Item.all_since_first_incomplete
    @item = Item.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end

#  # GET /items/1
#  # GET /items/1.xml
#  def show
#    @item = Item.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @item }
#    end
#  end

  # GET /items/new
  # GET /items/new.xml
  def del_new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item }
    end
  end

#  # GET /items/1/edit
#  def edit
#    @item = Item.find(params[:id])
#  end

  # POST /items
  # POST /items.xml
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to(items_path) }
        format.xml  { render :xml => @item, :status => :created, :location => @item }
      else
        format.html { redirect_to(items_path)}
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.xml
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        if (@item.reschedule)
          new = @item.clone;
          new.completed=false
          new.save
        end
        flash[:notice] = 'Item was successfully updated.'
        format.html { redirect_to(items_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.xml
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to(items_url) }
      format.xml  { head :ok }
    end
  end
end
