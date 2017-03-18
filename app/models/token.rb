class Token < ApplicationRecord
	belongs_to :user, required: false

	def used?
		self.user_id != nil ? true : false
	end
end