Rails.application.routes.draw do
  root 'welcome#index'
  resources :pizzas do
    resources :toppings, except: [:show, :index]
  end
end
