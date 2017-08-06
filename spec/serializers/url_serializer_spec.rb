describe UrlSerializer do
  let(:url) { UrlSerializer.new(FactoryGirl.create(:url, original_url: 'http://test.com')) }

  context 'to_json' do
    it 'includes short_link' do
      expect(url.to_json).to have_json_path('short_link')
    end

    it 'includes short_link' do
      expect(url.to_json).to have_json_path('original_url')
    end

    it 'includes original_url' do
      expect(url.to_json).to have_json_path('original_url')
    end
  end
end
