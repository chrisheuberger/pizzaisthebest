class ToppingsController < ApplicationController

  def create
    pizza = Pizza.find(params[:pizza_id])
    topping = Topping.create(topping_params)
    pizza.toppings << topping
    redirect_to "/pizzas/#{pizza.id}"
  end

  def new
    @pizza = Pizza.find(params[:pizza_id])
  end

  def edit
    @pizza = Pizza.find(params[:pizza_id])
    @topping = Topping.find(params[:id])
  end

  def update
    pizza = Pizza.find(params[:pizza_id])
    topping = Topping.find(params[:id])
    topping.update(topping_params)
    redirect_to "/pizzas/#{pizza.id}"
  end

  def destroy
    pizza = Pizza.find(params[:pizza_id])
    Topping.delete(params[:id])
    redirect_to "/pizzas/#{pizza.id}"
  end

  private

  def topping_params
    params.require(:topping).permit(:name, :pizza_id)
  end

end
