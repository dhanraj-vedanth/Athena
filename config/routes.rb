Rails.application.routes.draw do
  resources :feedbacks
  resources :sregistrations
  resources :line_items
  resources :carts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins, :controllers => { registrations: 'registrations' }
  devise_for :students, :controllers => { registrations: 'registrations' }
  devise_for :teachers, :controllers => { registrations: 'registrations' }
  resources :courses
  resources :tregistrations
  resources :histories
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "courses#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
