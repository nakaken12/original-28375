class Title < ApplicationRecord
  has_many :posts

  validates :title_name, uniqueness: { case_sensitive: true }
end
