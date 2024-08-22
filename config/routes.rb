Rails.application.routes.draw do
  resources :rooms, only: %i[index show]
  resources :house_plants, except: %i[edit update destroy]
end
