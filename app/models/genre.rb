class Genre < ActiveRecord::Base
  has_many :albums

  validates :genre_name, presence: true
end
