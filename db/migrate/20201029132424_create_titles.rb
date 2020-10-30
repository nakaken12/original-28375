class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :title_name,   null: false, uniqueness: true
      t.timestamps
    end
  end
end
