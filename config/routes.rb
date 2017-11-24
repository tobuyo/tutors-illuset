Rails.application.routes.draw do
  resources :replies
  resources :reports
  resources :comments
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
  }
  resources :users, :only => [:index, :show, :config]
  root 'static_pages#home'
  get 'tags/:tag', to: 'lessons#index', as: :tag
	resources :lessons
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
