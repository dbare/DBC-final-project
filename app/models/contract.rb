class Contract < ApplicationRecord
	belongs_to :candidate, required: false
	belongs_to :project, required: false
	has_one :evaluation
end
