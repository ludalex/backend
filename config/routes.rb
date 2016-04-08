Rails.application.routes.draw do
  namespace :api do
    use_doorkeeper
    resources :users, only: [:index, :show, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
