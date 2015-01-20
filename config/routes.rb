Rails.application.routes.draw do
  devise_for :users
  root 'pacientes#index'

  resources :pacientes do
    resources :analisis_mensuals
  end


end
