Rails.application.routes.draw do
    root to: 'grayscales#index'


    get '/blog', to: 'posts#index', as: 'blog'

    resources :posts, only: [:show]


    namespace :dashboard do
      resources :posts, except: [:show, :index]
    end
end
