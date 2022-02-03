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
    expect(last_response.status).to eq(200)
  end

  it "return response 200 from the /myprs route" do
    get '/my_prs'
    expect(last_response.status).to eq(200)
  end

  it "return response 200 from the /finalpaper route" do
    get '/final_paper'
    expect(last_response.status).to eq(200)
  end

  it "return response 404 when the route doesn't exist" do
    get '/doesnt_exist'
    expect(last_response.status).to eq(404)
  end
end
