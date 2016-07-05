Rails.application.routes.draw do
    root to: 'grayscales#index'

    get '/thankyou', to: 'contact_form#show', as: 'thankyou'
    post '/create', to: 'contact_form#create', as: 'create'

    get '/blog', to: 'blog_posts#index', as: 'blog'
    get '/blog/:slug', to: 'blog_posts#show', as: 'blog_post'
end
