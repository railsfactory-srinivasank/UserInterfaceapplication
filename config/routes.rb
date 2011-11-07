#Plugin module used for validating the users and  site administrator

DeviseExample::Application.routes.draw do
  devise_for :users, :admin

  resources :home, :only => :index
  resources :admins, :only => :index

#Default page for the home controller

  root :to => 'home#index'

  match '/token' => 'home#token', :as => :token
  
  #Routing to  edit profile  from the home controller
  
  match '/upload/:id'=>"home#edit", :as => :upload
    
  
  #Routing to  update the profile  from the home controller
  
  match "/update"=>"home#update"
  
  #Routing to  display picture  from the home controller
  
  match "displayphoto/:id"=>"home#displayphoto"
  
end
