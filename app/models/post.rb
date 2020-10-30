class Post < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :reactions
  belongs_to :title
  belongs_to_active_hash :genre

end
