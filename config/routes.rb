Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

    resources :posts do 
        resources :comments
    end
    root "posts#index"
end
