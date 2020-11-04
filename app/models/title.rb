class Title < ApplicationRecord
  has_many :posts

  validates :title_name, uniqueness: { case_sensitive: true }

  def self.search(search)
    Title.where('title_name LIKE(?)', "%#{search}%")
  end
end
