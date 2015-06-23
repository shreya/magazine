class Comment < ActiveRecord::Base

  validates :body, :presence => true

  belongs_to :user
  belongs_to :commentable, :polymorphic => true     
  has_many :comments, :as => :commentable
  has_many :children, -> { where commentable_type: "Comment" }, :class_name => "Comment", :foreign_key => :commentable_id, :dependent => :destroy  
end
