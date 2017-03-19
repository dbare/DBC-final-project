class Resume < ApplicationRecord
	mount_uploader :content, PhotoUploader

	belongs_to :user, required: false
end
