class OfficeWorker < User
	validates :year_of_exp, presence: true, numericality: { greater_than_or_equal_to: 0 }
end