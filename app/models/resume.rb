class Resume < ApplicationRecord
	mount_uploader :content, ContentUploader

	belongs_to :user, required: false
end
