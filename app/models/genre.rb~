class Genre < ActiveRecord::Base

has_many :subgenres

scope :search, lambda {|query|
 where(["title LIKE ?", "%#{query}%"])
}

end
