#Model for User
class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :lockable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation,:created_at,:photo
  has_attached_file :photo
  #validates_presence_of :photo_file_name, :message=>"Cannot be blank"
end
