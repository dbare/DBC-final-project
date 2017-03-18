class Resume < ApplicationRecord
	belongs_to :user, required: false
end
