class Post < ActiveRecord::Base
	is_impressionable
	has_many :comments
	belongs_to :category
	belongs_to :user
	def self.search(search)
		if search
			where(["title ILIKE ?","%#{search}%"])
		else
			all
		end
	end
end
