class Candidate < ApplicationRecord
	attr_accessor :unique_token

	has_many :links
	has_many :contracts
	has_one :token
	has_one :profile
	has_one :resume
	has_many :evaluations, through: :contracts
	has_many :projects, through: :contracts

	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	has_secure_password
end
