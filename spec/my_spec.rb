describe My do
  it 'returns the proper number of tweets' do
    VCR.use_cassette("fetch_url_tweets") do
      expect(My.tweets.count).to eql 20
    end
  end
end
