Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'profiles#index'})
end
