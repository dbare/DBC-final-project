class Company < ApplicationRecord
	has_many :jobs
	has_many :projects

	validates :name, :location, :password, :email, presence: true
	validates :email, uniqueness: true

	has_secure_password
end
