class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  #Este es un metodo de clase
  def self.from_omniauth(auth_data)
  	where(provider: auth_data[:provider], uid: auth_data[:uid]).first_or_create do |user|
  		if auth_data[:info]
  			user.email = auth_data[:info][:email]
  		end
  		user.password = Devise.friendly_token[0,20]
  	end
  end 
end
