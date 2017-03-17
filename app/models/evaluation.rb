class Evaluation < ApplicationRecord
	belongs_to :contract, required: false
	# has_one :candidate, through: :contract
end
