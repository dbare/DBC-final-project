class Company < ApplicationRecord
	mount_uploader :photo, PhotoUploader

	has_many :jobs
	has_many :users

	UNRANSACKABLE_ATTRIBUTES = ["id", "created_at", "updated_at", "email", "photo"]

	def self.ransackable_attributes(auth_object = nil)
  	(column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
	end

end
