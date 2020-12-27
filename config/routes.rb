Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/books_in_the_list/:id', to: 'home#books_in_the_list'
  get '/start' , to: 'new#start'
  get '/add_book' , to: 'new#add_book'
  #post '/add_book' , to: 'new#add_book'
  get '/authors_book/:id', to: 'home#authors_book'
end
