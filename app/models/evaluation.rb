class Evaluation < ApplicationRecord

	def subject
		User.find(self.subject_id)
	end

	def author
		User.find(self.author_id)
	end
end
