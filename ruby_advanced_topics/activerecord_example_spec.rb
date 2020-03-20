require 'rspec'
require 'active_record'
require 'pg'
require_relative 'active_record_tables/artist'


describe 'Artist' do
  before(:each) do
    ActiveRecord::Base.establish_connection(
        adapter:  'postgresql',
        host:     'localhost',
        port:     '5000',
        username: 'vm',
        password: 'musicbrainz',
        database: 'musicbrainz'
    )
  end

  it 'should have records' do
    expect(Artist.all.count).not_to eq 0
  end

  #The Beatles should be an artist
  #The Beatles first album should be Please Please Me
end