Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'transactions#index'
  resources :transactions, only: [:create, :index] do
    collection do
      get :table
    end
  end
end
