Rails.application.routes.draw do
  get 'welcome/index'
  root to:"welcome#index"
  resources :drinks
  resources :reviews do
    collection do
      get :select
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
