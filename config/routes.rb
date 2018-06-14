Rails.application.routes.draw do
post 'responses/new'=> 'responses#new'
  get 'users/show' => 'users#show'
  devise_for :users
  resources :articles do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
end
