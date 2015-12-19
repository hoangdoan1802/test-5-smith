require 'rails_helper'

describe OfficeWorker do
  context 'Validation' do
    it { is_expected.to validate_numericality_of(:year_of_exp).is_greater_than_or_equal_to(0) }
  end

  describe :age do
    let(:office_worker)   { create :user, dob: '18-02-1992' }
    it "has the proper age" do
      expect(office_worker.age).to eql(23)
    end
  end
end