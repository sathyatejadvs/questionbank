class Question < ApplicationRecord
	has_many :answers

	accepts_nested_attributes_for :answers, reject_if: proc{ |attributes| attributes['content'].blank? }, allow_destroy: true
end
