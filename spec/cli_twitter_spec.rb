load '/Users/noahc/projects/twitter/cli_twitter.thor'

describe CliTwitter do
  it 'hello world returns hello world string' do
    VCR.use_cassette("fetch_url_tweets") do
      expect(CliTwitter.new.fetch_url_tweets.count).to eq 20
    end
  end
end
