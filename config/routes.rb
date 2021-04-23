Rails.application.routes.draw do
  root "products#index" 
  resource :products do
    resource :comments
  end
end
