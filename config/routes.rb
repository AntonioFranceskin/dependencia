Rails.application.routes.draw do

resources :companies, shallow: true  do
  resources :ships
end
get '/ships', to: 'ships#index'

end
