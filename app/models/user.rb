class User < ApplicationRecord
	attr_accessor :unique_token

	has_many :links
	has_many :contracts
	
	has_one :token
	has_one :profile
	has_one :resume
	
	belongs_to :company, required: false

	has_many :evaluations, through: :contracts
	has_many :projects, through: :contracts

	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	has_secure_password

	def full_name
		self.first_name + " " + self.last_name
 	end


end
