class PostTitle
  include ActiveModel::Model
  attr_accessor :title_name, :genre_id, :rate, :spoiler, :content, :user_id, :title_id

  # postモデルのバリデーション
  STATUS_VALUES = ["true", "false"]

  validates :content, :genre_id, presence: true
  validates :spoiler, inclusion: { in: STATUS_VALUES }
  validates :genre_id, numericality: { other_than: 1 }

  # titleモデルのバリデーション
  validates :title_name, presence: true

  def save
    title = Title.where(title_name: title_name).first_or_initialize
    title.save
    Post.create(content: content, genre_id: genre_id, rate: rate, spoiler: spoiler, user_id: user_id, title_id: title.id)
  end
end
