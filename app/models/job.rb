class Job < ApplicationRecord
	belongs_to :company, required: false
end
