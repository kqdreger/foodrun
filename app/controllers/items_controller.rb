class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @order = @item.order # Ensure @order is set for the form to re-render if needed

    if @item.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @item.order }
      end
    else
      # render :new, status: :unprocessable_entity
    end
  end

  def item_params
    params.require(:item).permit(
      :name,
      :description,
      :order_id
    )
  end
end
