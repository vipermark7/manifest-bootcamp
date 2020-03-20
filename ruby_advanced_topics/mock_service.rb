require 'sinatra'
require 'webrick'
require 'webrick/https'
require 'openssl'

class MockService < Sinatra::Base
  get '/more/' do
    content_type :json
    File.open('mock_service_json/more.json')
  end

  get '/' do
    content_type :json
    File.open('mock_service_json/base.json')
  end
end

Rack::Handler::WEBrick.run MockService, {Port:4567}