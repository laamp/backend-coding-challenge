class Art < ApplicationRecord
  validates :title, :artist, :year, presence: true

  has_many :comments,
  primary_key: :id,
  foreign_key: :art_id,
  class_name: :Comment
end