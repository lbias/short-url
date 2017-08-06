describe UrlSerializer do
  let(:log) { LogSerializer.new(FactoryGirl.create(:log)) }

  context 'to_json' do
    it 'includes ip' do
      expect(log.to_json).to have_json_path('ip')
    end

    it 'includes referer' do
      expect(log.to_json).to have_json_path('referer')
    end

    it 'includes user_agent' do
      expect(log.to_json).to have_json_path('user_agent')
    end

    it 'includes visited_at' do
      expect(log.to_json).to have_json_path('visited_at')
    end
  end
end
