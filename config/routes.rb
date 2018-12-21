Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'store#main', as: 'main'
  get '/show', to: 'store#show', as: 'show'
  get '/login', to: 'user#login', as: 'login'

  namespace '/wpi/v1' do 
  	get '/query_show_items', to: 'store#query_show_items', as: 'wpi_query_show_items'
  end 


end
