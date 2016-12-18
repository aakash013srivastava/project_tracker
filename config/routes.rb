Rails.application.routes.draw do
  
  get 'access/login'

  get 'access/logout'

  get 'access/attempt_login'

  get 'access/index'

  match '(/:controller(/:action(/:id)))' , :via => [:get,:post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
