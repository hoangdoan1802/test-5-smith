require 'rails_helper'

describe User do
  context 'Validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
  end
end