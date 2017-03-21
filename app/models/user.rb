class User < ApplicationRecord
	attr_accessor :unique_token

	mount_uploader :photo, PhotoUploader

	has_many :links
	has_many :uploads
	has_one :token
	has_one :profile
	has_one :resume
	has_many :evaluations
	belongs_to :company, required: false
	has_many :favorites

	has_many :favorite_jobs, through: :favorites, source: :job

	has_many :conversations, :foreign_key => :sender_id

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

 	UNRANSACKABLE_ATTRIBUTES = ["id", "admin_status", "email", "password_digest", "photo", "created_at", "updated_at", "company"]

	def self.ransackable_attributes(auth_object = nil)
  	(column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
	end

end
