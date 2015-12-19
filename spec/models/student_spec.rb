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
    # let(:student) { create :user, dob: '18-02-1997' }
  end
end