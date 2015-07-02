class Post < ActiveRecord::Base

	validates :contenido, presence: true, length: {maximum: 140}
	validates :user_id, presence: true


	#pertenece a un usuario
	belongs_to :user
end
