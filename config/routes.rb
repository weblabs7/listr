Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'

  get 'pages/about'

    resources :posts do 
        resources :comments
    end
    root "posts#index"
    
    get 'devise/user'
    get 'user/sign_in' => 'devise/sessions#new'
end
