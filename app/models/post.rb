class Post < ActiveRecord::Base
	validates :meta_title, presence: true, uniqueness: true, :length => { :maximum => 60}
	validates :meta_description, presence: true, uniqueness: true, :length => { :maximum => 160}
	validates :permalink, presence: true, uniqueness: true
	extend FriendlyId
	friendly_id :permalink, use: [:slugged, :history, :finders]
	is_impressionable
	has_many :comments
	belongs_to :category
	belongs_to :user
	def should_generate_new_friendly_id?
		permalink_changed?
	end
	def self.search(search)
		if search
			where(["title ILIKE ?","%#{search}%"])
		else
			all
		end
	end
end
