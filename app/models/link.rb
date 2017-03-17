class Link < ApplicationRecord
	belongs_to :candidate, required: false
end
