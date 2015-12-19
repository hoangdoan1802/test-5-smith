class Student < User
  validate :dob_18

  def dob_18
    return if dob.blank?
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end
end