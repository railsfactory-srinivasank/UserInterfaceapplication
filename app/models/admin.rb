#Administrator model for administrators
#Invoking the authentication,registerable,timeoutable and validatable modules from the Devise module

class Admin < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :timeoutable, :validatable,
         :timeout_in => 20.minutes
end
