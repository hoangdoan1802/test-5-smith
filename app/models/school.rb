class School < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  has_many :schools_users, foreign_key: "user_id"
	has_many :students, :through => :schools_users
end