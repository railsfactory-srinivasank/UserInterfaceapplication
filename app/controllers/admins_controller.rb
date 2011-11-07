# Controller for administrator

class AdminsController < ApplicationController

#Authencating the user is a administrator 

before_filter :authenticate_admin!


  def index
  end
end
