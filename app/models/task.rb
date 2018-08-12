# frozen_string_sanatizer: true
class Task < ApplicationRecord
	self.table_name = 'tasks'
	self.primary_key = 'id'

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :description,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145}
end
