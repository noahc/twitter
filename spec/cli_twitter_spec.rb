load '/Users/noahc/projects/twitter/cli_twitter.thor'

describe CliTwitter do
  it 'fetch url tweets returns fetch url tweets' do
    VCR.use_cassette("fetch_url_tweets") do
      expect(CliTwitter.new.fetch_url_tweets.count).to eq 20
    end
  end
end
