class Evaluation < ApplicationRecord
	belongs_to :contract, required: false
	# belongs_to :user, through: :contract
end
