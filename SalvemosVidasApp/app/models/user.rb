# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :string           default(""), not null
#  uid                    :string
#  provider               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  tipo                   :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  #validates :username, uniqueness: true
  validates :username, uniqueness: true
  has_many :commentaries
  has_many :forum_posts
  has_many :lessons

  #has_many :forum_posts, through: :commentaries
  #Este es un metodo de clase
  def self.from_omniauth(auth_data)
  	where(provider: auth_data[:provider], uid: auth_data[:uid]).first_or_create do |user|
  		if auth_data[:info]
  			user.email = auth_data[:info][:email]
  		end
  		user.password = Devise.friendly_token[0,20]
      user.tipo = "normal"
  	end
  end 
end
