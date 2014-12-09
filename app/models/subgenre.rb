class Subgenre < ActiveRecord::Base
belongs_to :genre
has_many :books
has_many :songs
end
