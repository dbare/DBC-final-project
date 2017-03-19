class Evaluation < ApplicationRecord
	# belongs_to :contract, required: false




	def subject
		User.find(self.subject_id)
	end

	def author
		User.find(self.author_id)
	end


end
