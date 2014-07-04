Rails.application.routes.draw do
  root to: "pizzas#index"
  resources :pizzas do
    resources :toppings, except: [:show, :index]
  end
end
