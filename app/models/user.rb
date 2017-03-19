class User < ApplicationRecord
	attr_accessor :unique_token
	mount_uploader :photo, PhotoUploader

	# validates_processing_of :photo
	# validate :photo_size_validation

	has_many :links
	
	has_one :token
	has_one :profile
	has_one :resume

	has_many :evaluations 
	
	belongs_to :company, required: false

	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	has_secure_password

	def full_name
		self.first_name + " " + self.last_name
 	end

 	def evaluations
 		Evaluation.where(subject_id: self.id)
 	end

 	private
 	
 		# def photo_size_validation
 		# 	if photo.size > 0.5 megaby
 		# 	errors[:photo] << "should be less than 500KB" if photo.size > 0.5 megabytes
 		# end
end
