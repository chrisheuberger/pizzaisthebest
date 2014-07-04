Rails.application.routes.draw do
  root 'pizzas#index'
  resources :pizzas do
    resources :toppings, except: [:show, :index]
  end
end
