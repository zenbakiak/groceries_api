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

  root 'pages#index'
end
