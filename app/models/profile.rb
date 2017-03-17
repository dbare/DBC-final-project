class Profile < ApplicationRecord
	belongs_to :candidate, required: false
end
