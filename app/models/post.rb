class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :title
  belongs_to_active_hash :genre

  validates :content, :genre_id, presence: true
  validates :genre_id, numericality: { other_than: 1 }
end
