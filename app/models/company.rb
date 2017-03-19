class Company < ApplicationRecord
	mount_uploader :photo, PhotoUploader

	has_many :jobs
	has_many :users
	

	# validates :name, :location, :email, presence: true
	# validates :email, uniqueness: true

	# has_secure_password
end
