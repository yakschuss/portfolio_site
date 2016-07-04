Rails.application.routes.draw do
    root to: 'grayscales#index'

    get '/thankyou', to: 'contact_form#show', as: 'thankyou'
    post '/create', to: 'contact_form#create', as: 'create'
end
