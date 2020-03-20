require 'rspec'
require 'rest-client'
require 'json'

describe 'MockService' do

  it "should be titled 'Hello World!'" do
    # RestClient::Resource.new(URL, use:'', password:'').get
    resource = RestClient::Resource.new('localhost:4567')
    result_hash = JSON.parse(resource.get)
    expect(result_hash['title']).to eq 'Hello World!'
  end

  it "should have a body" do
    resource = RestClient::Resource.new('localhost:4567')
    result_hash = JSON.parse(resource.get)
    expect(result_hash['body']).to eq("this is the body of the service")
  end

  #the title of the more service should be example glossary
  it "should have a title 'example glossary'" do
    resource = RestClient::Resource.new('http://localhost:4567/more/')
    result_hash = JSON.parse(resource.get)
    expect(result_hash['glossary']['title']).to eq("example glossary")
  end
  #the id of the first entry of the more service should be SGML
  it "should have a first entry with id 'SGML'" do
    resource = RestClient::Resource.new('http://localhost:4567/more/')
    result_hash = JSON.parse(resource.get)
    expect(result_hash['glossary']['GlossDiv']['GlossList']['GlossEntry']['ID']).to eq('SGML')
  end
end