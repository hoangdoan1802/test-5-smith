require 'rails_helper'

describe OfficeWorker do
  context 'Validation' do
    it { is_expected.to validate_numericality_of(:year_of_exp).is_greater_than_or_equal_to(0) }
  end
end