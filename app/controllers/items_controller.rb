class ItemsController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
  def index
  end

  def show
    #find(1)は後でfind(params[:id])に修正する
    @item = Item.find(1)
    render layout: "layout_items_show"
  end
  
  def new
    render layout: "second_layout"
  end

  def destroy
    @item = Item.find(1)
    item.destroy if current_user.id == item_user.id
  end

end
