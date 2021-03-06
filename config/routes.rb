Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/home', to: 'welcome#home'
  get '/', to: 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
