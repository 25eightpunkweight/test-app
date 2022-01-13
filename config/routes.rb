Rails.application.routes.draw do
  root to: "users#index"
  resources :users
  # get 'users/index'
  # put 'users/add'
  # post 'users/create'
  # delete 'users/delete'
  # put 'users/populate'

  # resources :user do 
  #   member do 
  #     get 'index'
  #     put 'add'
  #     post 'new'
  #     delete 'delete'
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
