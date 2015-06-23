class MagazineBook < ActiveRecord::Base
	has_many :articles
end
