Rails.application.routes.draw do
  root to: "articles#index" # change default root
  resources :articles do
    resources :comments
  end
end
