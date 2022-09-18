Rails.application.routes.draw do
  root "todos#index"

  resources :todos do
    member do
      put :completed
    end
  end
end
