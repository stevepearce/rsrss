Rails.application.routes.draw do
	get '/' => 'main#index'
	resources :feeds

end
