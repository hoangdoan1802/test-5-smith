require 'rails_helper'

describe Student do
  describe :age do
    let(:student)   { create :user, dob: '18-02-1997' }
    it "has the proper age" do
      expect(student.age(student.dob)).to eql(18)
    end
  end
end