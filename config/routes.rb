Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'profiles#index'})
  match('profiles/new', {:via => :get, :to => 'profiles#new'})
end
