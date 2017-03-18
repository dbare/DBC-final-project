class Contract < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :project, required: false
	has_one :evaluation
end
