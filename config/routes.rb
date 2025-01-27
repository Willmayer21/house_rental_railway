Rails.application.routes.draw do
  root 'home#index'
  get 'gallery', to: 'home#gallery'
  get 'contact', to: 'home#contact'
  get 'test', to: 'home#test'
end
