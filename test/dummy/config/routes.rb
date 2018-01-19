Rails.application.routes.draw do
  mount Cadplugin::Engine => "/plugins"
  namespace :api, defaults: { format: :json } do
  	get "/plugins/:id" => "main#show" 
	put "/plugins/:id" => "main#update"
  end
end
