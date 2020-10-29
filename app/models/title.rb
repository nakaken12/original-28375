class Title < ApplicationRecord
  has_many :posts

  validates :name, uniqueness: { case_sensitive: true }
end
