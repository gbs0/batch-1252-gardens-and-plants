Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plant, only: :destroy do
    resources :plant_tags, only: [:new, :create]
  end

  # resources :plant_tags, only: [:new, :create]
  resources :plants, only: :destroy
end
