Rails.application.routes.draw do

  get 'users/show' => 'users#show'
  get 'articles/index'
  get 'users/show_prof'=>'users#show_prof'
  devise_for :users
  resources :articles do
  resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
end
