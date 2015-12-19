class Student < User
	include Seeds::Student
  validate :dob_18

  has_many :schools_users, foreign_key: "user_id"
	has_many :schools, :through => :schools_users

  def dob_18
    return if dob.blank?
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end
end