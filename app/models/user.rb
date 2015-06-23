class User < ActiveRecord::Base
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable

  	devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :trackable, :validatable
	has_many :articles, dependent: :destroy
	has_many :comments, dependent: :destroy

	def can_delete?(comment)
		self == comment.user and !comment.children.any?
	end
end
