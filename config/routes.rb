Rails.application.routes.draw do

  get 'welcome/:first_name', to: 'welcome#first_name'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/', to: 'static_pages#home'
  root 'static_pages#home'
    
  resources :gossips, except: [:destroy, :update]  
  resources :users, except: [:destroy, :update]
  resources :cities, except: [:destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
