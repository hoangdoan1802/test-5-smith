class OfficeWorker < User
  validates :year_of_exp, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validate :dob_20

  def dob_20
    return if dob.blank?
    if dob + 20.years >= Date.today
      errors.add(:dob, "can't be under 20")
    end
  end
end