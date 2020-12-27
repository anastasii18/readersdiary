Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/books_in_the_list/:id', to: 'home#books_in_the_list'
  get '/start' , to: 'new#start'
  get '/add_book' , to: 'new#add_book'
  get '/add_author' , to: 'authors#add_author'
  get '/add_list' , to: 'lists#add_list'
  get '/add_book_in_list' , to: 'lists#add_book_in_list'
  get '/show/:book_id' , to: 'new#add_book'
  get '/authors/show/:author_id' , to: 'authors#add_author'
  get '/lists/show/:list_id' , to: 'lists#add_list'
  get '/new' , to: 'new#add_book'
  get '/lists/new' , to: 'lists#add_list'
  get '/authors/new' , to: 'authors#add_author'
  post '/add_book' , to: 'new#create'
  post '/add_author' , to: 'authors#create'
  post '/add_book_in_list' , to: 'lists#add_books'
  post '/add_list' , to: 'lists#create'
  get '/authors_book/:id', to: 'home#authors_book'
  get '/about_book/:id', to: 'home#about_book'
end
