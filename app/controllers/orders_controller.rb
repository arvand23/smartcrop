class OrdersController < ApplicationController
  def create
    @order = Order.new order_params
    if @order.save
      redirect_to root_path, notice: "Success!"
    else
      redirect_to root_path, notice: "Failed"
    end
  end

  def new
    @order = Order.new
    @items_in_excess = Item.where(excess: true)
    @items_not_in_excess = Item.where(excess: false)
  end

  private
  def order_params
    params.require(:order).permit(:recurring, :quantity, :user_id, :itemsarray, :tomato, :cucumber, :carrot, :cabbage, :broccoli, :spinach, :kale, :celery, :greenpepper, :okra, :corn, :squash, :onion)
  end
end
