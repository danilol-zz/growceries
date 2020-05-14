Rails.application.routes.draw do
  root to: "shop_lists#home"
  get :autocomplete, to: "shop_lists#autocomplete"

  resources :products
  resources :shop_lists do
    member do
      get "detach_product"
      get "attach_product"
      #get :autocomplete
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
