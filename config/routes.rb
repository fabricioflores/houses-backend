Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :houses do
        collection do
          get 'search'
        end
      end
    end
  end
end
