Rails.application.routes.draw do
  namespace :api, path: '/', constraint: { subdomain: 'api' } do
  	namespace :v1 do 
  		resources :tasks
  	end
  end
end
