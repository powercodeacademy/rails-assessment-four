Rails.application.routes.draw do
  resources :rooms, only: %i[index show]
  resources :house_plants, only: %i[index show new create]
end
