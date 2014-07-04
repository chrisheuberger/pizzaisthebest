Rails.application.routes.draw do
  resources :pizzas do
    resources :toppings, except: [:show, :index]
  end
end
