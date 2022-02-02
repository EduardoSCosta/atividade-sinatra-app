ENV['APP_ENV'] = 'test'

require_relative '../app.rb'
require 'rspec'
require 'rack/test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

describe 'App' do
  def app
    Sinatra::Application
  end

  it "return response 200 from the / route" do
    get '/'
    expect(last_response).to be_ok
  end

  it "return response 200 from the /myprs route" do
    get '/my_prs'
    expect(last_response).to be_ok
  end

  it "return response 200 from the /finalpaper route" do
    get '/final_paper'
    expect(last_response).to be_ok
  end
end
