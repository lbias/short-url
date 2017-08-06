require 'rails_helper'

RSpec.describe Url, 'Validations', type: :model do
  it { is_expected.to validate_uniqueness_of(:original_url) }
  it { is_expected.to allow_value('http://example.com').for(:original_url) }
  it { is_expected.to allow_value('https://example.com').for(:original_url) }
  it { is_expected.not_to allow_value('example.com').for(:original_url) }
  it { is_expected.not_to allow_value('http://example').for(:original_url) }
  it { is_expected.not_to allow_value('example').for(:original_url) }

  it 'sets short url before save' do
    @url = FactoryGirl.build(:url, short_url: '')
    @url.save
    expect(@url.short_url).not_to be nil
  end
end

RSpec.describe Url, 'Association', type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:logs) }
end
