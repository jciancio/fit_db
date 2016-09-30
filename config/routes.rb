Rails.application.routes.draw do
  root 'users#index'

  resources :users do as_routes end

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  # concern :active_scaffold_association, ActiveScaffold::Routing::Association.new
  # concern :active_scaffold, ActiveScaffold::Routing::Basic.new(association: true)
end
