require 'rails_helper'

RSpec.describe User, 'Validations', type: :model do
  it { is_expected.to validate_presence_of(:name)  }
  it { is_expected.to validate_presence_of(:email) }
end
