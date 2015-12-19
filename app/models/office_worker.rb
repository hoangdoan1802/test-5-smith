class OfficeWorker < User
	validates :year_of_exp, presence: true
end