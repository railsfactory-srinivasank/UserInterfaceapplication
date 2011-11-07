# Home  Controller
class HomeController < ApplicationController
  
# Authenticating the Users only for the access 
  
  before_filter :authenticate_user!, :only => :token

#Index method for home controller

def index

  end

# Token Method

  def token
  end
  
# Method  to edit the profile
# View File name:edit.html.erb

   def edit
     
      @user = User.find(params[:id])
   
   end
  
#Method to update the user profile 
#No view file attached to the below method
  
  def update
    #Retrieving the specific user record
    
      @user = User.find(params[:id])
      
      #Checking whether the object  attribute submitted by the user  has changed.
      
      if @user.update_attributes(params[:user])
      redirect_to :action => 'displayphoto', :id => @user
      else
         render :action => 'edit'
       end
  end 


# Method to display the users image
# View File name:displayphoto.html.erb
  def displayphoto
    @user= User.find(params[:id])
         
  end
  
# Method to Create a New user temporariy not in use
  
  def create
     #@user = User.create(params[:user])
end
  
end
