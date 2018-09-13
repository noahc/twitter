load '/Users/noahc/projects/twitter/cli_twitter.thor'

describe CliTwitter do
  it 'hello world returns hello world string' do
    expect(CliTwitter.new.hello_world).to eql 'Hello world!'
  end
end
