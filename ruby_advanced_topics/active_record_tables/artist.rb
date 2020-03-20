class Artist < ActiveRecord::Base
  belongs_to :label
  has_many :albums
  has_one :genre
  has_many :aliases, foreign_key: :artist, class_name: 'Alias'

  alias_attribute :really_long_key_that_is_annoying_to_type, :long_key
end