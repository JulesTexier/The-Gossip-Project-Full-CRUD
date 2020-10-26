Rails.application.routes.draw do
  get 'users/:user', to: 'users#user', as: "user"
  get 'gossips/:gossip', to: 'gossips#gossip' , as: "gossip"
  get 'welcome/:first_name', to: 'welcome#first_name'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/', to: 'static_pages#home'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end