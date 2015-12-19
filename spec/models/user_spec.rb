require 'rails_helper'

describe User do
  context 'Validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
  end

  describe :age do
    let(:user)   { create :user, dob: '18-02-1992' }
    it "Show age" do
      expect(user.age).to eql(23)
    end
  end
end