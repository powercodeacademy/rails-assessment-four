Rails.application.routes.draw do
  resources :rooms, only: [:index]
  resources :house_plants, only: %i[index show]
end
