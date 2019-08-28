Rails.application.routes.draw do
  get 'user/index'
  get 'user/create'
  get 'user/update'
  get 'user/destroy'
  # get 'time_tables/index'
  # get 'time_tables/show'
  # get 'time_tables/create'
  # get 'time_tables/update'
  # get 'time_tables/destroy'
  devise_for :users
  resources :time_tables, only: %i[index show update destroy] do
    get 'by_user/:user_id', on: :collection, to: 'time_tables#by_user'
  end
  post 'time_tables', to: 'time_tables#register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
