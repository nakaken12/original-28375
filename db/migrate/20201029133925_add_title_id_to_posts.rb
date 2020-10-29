class AddTitleIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title_id, :bigint
    add_foreign_key :posts,  :titles, column: :"title_id"
  end
end
