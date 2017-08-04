require 'rails_helper'

RSpec.describe Url, 'Validations', type: :model do
  it { is_expected.to validate_presence_of(:short_url) }
  it { is_expected.to validate_presence_of(:original_url) }
end

RSpec.describe Url, 'Association', type: :model do
  it { is_expected.to belong_to(:user) }
end
