





class User < ApplicationRecord
	include ActiveModel::Validations
	has_secure_password
	has_one :cart
	has_many :recipes
	validates :username, presence: true, uniqueness: true

end
