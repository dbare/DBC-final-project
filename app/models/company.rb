class Company < ApplicationRecord
	mount_uploader :photo, PhotoUploader

	has_many :jobs
	has_many :users

end
