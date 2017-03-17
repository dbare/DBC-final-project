class Token < ApplicationRecord
	belongs_to :candidate, required: false

	def used?
		self.user_id != nil ? true : false
	end
end