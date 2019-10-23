class User < ApplicationRecord
  validates :name, :age, :location, presence: true

  has_many :comments,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Comment

  def self.find_by_name(name)
    user = User.find_by(name: name)
    user ? user : nil
  end
end
