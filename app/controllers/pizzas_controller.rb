class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def create
    pizza = Pizza.create(pizza_params)
    redirect_to "/pizzas/#{pizza.id}"
  end

  def new
    @pizza = Pizza.new
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def update
    pizza = Pizza.find(params[:id])
    pizza.update(pizza_params)
    redirect_to "/pizzas/#{pizza.id}"
  end

  def destroy
    Pizza.delete(params[:id])
    redirect_to "/pizzas"
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :url, :diameter)
  end

end
