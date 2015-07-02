class User < ActiveRecord::Base
	#se valida que los campos no esten vacios
	before_save {self.email = email.downcase}
	validates :nombre, presence: true, length: {maximum: 10}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with:VALID_EMAIL_REGEX }, 
		uniqueness: {case_sensitive: false}

	has_secure_password
	validates :password, length: {minimum: 6}

	#relacion de la bd
	has_many :posts
end
