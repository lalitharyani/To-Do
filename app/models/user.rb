class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :username, :presence => true
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password ,:username , :password_confirmation
end
