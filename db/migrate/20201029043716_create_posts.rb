class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text       :content,     null: false
      t.boolean    :spoiler
      t.float      :rate
      t.integer    :genre_id,    null: false
      t.bigint     :user_id,     null: false

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :"user_id"
  end
end
