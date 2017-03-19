class Resume < ApplicationRecord
	mount_uploader :file, FileUploader 
	belongs_to :user, required: false
end
