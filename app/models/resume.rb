class Resume < ApplicationRecord
	mount_uploader :attachment, FileUploader 
	belongs_to :user, required: false

	# validates_processing_of :attachment
	# validate :attachment_size_validation

	# private
	# def attachment_size_validation
	# 	errors[:attachment] << "should be less than 500KB" if image.size > 0.5 megabytes
		
	# end
end
