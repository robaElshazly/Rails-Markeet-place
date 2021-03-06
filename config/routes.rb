Rails.application.routes.draw do
  get 'bookings/success', to: "bookings#success", as: "booking_success" 
  post 'bookings/webhook', to: 'bookings#webhook'
  get 'bookings/cancel', to: "bookings#cancel", as: "booking_cancel" 
  get 'bookings/new/', to: "bookings#new", as: "new_booking"
  resources :categories
  resources :items
  devise_for :users
  get 'users/my_items' , to: 'users#my_items', as: 'my_items'
  root 'home#page' 
end
