Rails.application.routes.draw do
  get 'pages/info'

  resources :events
  resources :ideas
  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "events" => "events#index"
  #match ':controller(/:action(/:id(.:format)))', :via => :all #幫助自動對應
end