class User < ActiveRecord::Base
  validates :name, presence: true
  validates :dob, presence: true
  
  def age(dob)
    today = Date.today
    age = today.year - dob.year
    age -= 1 if dob.strftime("%m%d").to_i > today.strftime("%m%d").to_i
    age
  end
end