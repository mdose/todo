class ItemsController < ApplicationController

  # GET /items
  def index
    @items = Item.order(:created_at => :desc)
  end

  # POST /items
  def create
    @item = Item.new
    @item.name = params["item"]["name"]
    @item.save
    redirect_to :root
  end

  # GET /items/:id/edit
  def edit
    @item = Item.find(params["id"])
  end

  # PUT /items/:id
  def update
    @item = Item.find(params["id"])
    @item.name = params["item"]["name"]
    @item.save
    redirect_to :root
  end

  # DELETE /items/:id
  def destroy
    @item = Item.find(params["id"])
    @item.destroy
    redirect_to :root
  end

end
