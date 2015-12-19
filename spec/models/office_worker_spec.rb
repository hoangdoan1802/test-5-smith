require 'rails_helper'

describe OfficeWorker do
  context 'Validation' do
    it { is_expected.to validate_presence_of :year_of_exp }
  end
end