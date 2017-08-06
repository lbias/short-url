require 'rails_helper'

RSpec.describe Log, 'Associations', type: :model do
  it { is_expected.to belong_to(:url).counter_cache(:true) }
end
