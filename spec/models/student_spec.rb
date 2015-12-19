require 'rails_helper'

describe Student do
  describe :age do
    let(:student)   { create :user, dob: '18-02-1997' }
    it "has the proper age" do
      expect(student.age).to eql(18)
    end
  end

  context 'Association' do
    it { is_expected.to have_many :schools_users }
    it { is_expected.to have_many :schools }
  end

  describe :schoolmates do
    let(:university_school) { create :school, type: "University" }

    it "has the proper age" do
      university_school.students.create(name: "Theo", dob: '18-02-1990')
      user = university_school.students.create(name: "Oliver", dob: '18-02-1991')
      ap user.schoolmates, plain: true
      expect(university_school.students.size).to eq(2)
      expect(user.schoolmates.count).to eq(1)
    end
  end
end