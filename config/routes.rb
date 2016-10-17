Rails.application.routes.draw do

  root 'welcome#index'
  resources :users do
    member do
      get :dashboard
    end
  end
end
