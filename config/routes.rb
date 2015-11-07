Rails.application.routes.draw do

  resources :pages do
    collection do
      get :about_us
    end
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    confirmations: "users/confirmations",
    passwords: "users/passwords"
  }

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    api_version(module: 'V1',
                path: { value: 'v1' },
                header: { name: 'Accept', value: 'application/vnd.groceries; version=1' },
                defaults: { format: :json }
               ) do

      resources :users, except: [:destroy]

      resources :sessions, only: [:create, :destroy]
      resources :registrations, only: [:create, :update]
      resources :passwords
    end

    root 'api#unauthorized'
  end


  root 'pages#index'
end
