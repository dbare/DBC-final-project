class Profile < ApplicationRecord
	belongs_to :user, required: false
end
