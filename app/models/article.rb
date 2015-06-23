class Article < ActiveRecord::Base
	## Validations
	validates :title, presence: true, uniqueness: true
	validates :body, presence: true

	## Associations
	belongs_to :author, :class_name => "User", :foreign_key => :user_id
	
	has_many :comments, :as => :commentable, :dependent => :destroy
end
