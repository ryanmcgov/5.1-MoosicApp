class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :artist
  belongs_to :genre

  validates :title, presence: true
end
