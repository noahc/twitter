require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

class CliTwitter < Thor
  desc "hello_world", "prints hello world to the terminal"
  def hello_world
    "Hello World!"
  end
end
