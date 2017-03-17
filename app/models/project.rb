class Project < ApplicationRecord
	belongs_to :company, required: false
	has_many :contracts
end