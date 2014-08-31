Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'profiles#index'})
  match('profiles/new', {:via => :get, :to => 'profiles#new'})
  match('profiles/', {:via => :post, :to => 'profiles#create'})
  match('profiles/:id', {:via => :get, :to => 'profiles#show'})
  match('profiles/:id', {:via => :delete, :to => 'profiles#destroy'})
  match('profiles/:id/edit', {:via => :get, :to => 'profiles#edit'})
  match('profiles/:id', {:via => [:patch, :post], :to => 'profiles#update'})
end
