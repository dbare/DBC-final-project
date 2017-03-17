class Resume < ApplicationRecord
	belongs_to :candidate, required: false
end
