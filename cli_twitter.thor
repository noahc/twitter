require 'rubygems'
require 'bundler/setup'
Dir.glob('lib/**/*.rb') { |f| require_relative f }

Bundler.require(:default)
Dotenv.load

class CliTwitter < Thor
  desc "fetch_url_tweets", "fetches all tweets with urls"
  def fetch_url_tweets
    My.tweets.each do |tweet|
      tweet = Tweet.new(tweet)
      p ["TEXT", tweet.text]
    end
  end
end
