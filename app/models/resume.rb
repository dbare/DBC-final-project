class Resume < ApplicationRecord
	belongs_to :user, required: false

	mount_uploader :content, PhotoUploader
end
