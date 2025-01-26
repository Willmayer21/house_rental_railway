Rails.application.routes.draw do
  root 'home#index'
  get 'gallery', to: 'home#gallery'
end
