class Comment < ApplicationRecord
  validates :content, :art_id, presence: true
  validate :name_exists_if_user_id_does_not

  belongs_to :user,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :art,
  primary_key: :id,
  foreign_key: :art_id,
  class_name: :Art

  attr_reader :user_id, :name
  def name_exists_if_user_id_does_not
    if !user_id && !name
      errors.add(:name, 'Name must be present if user is not signed up')
    end
  end
end
