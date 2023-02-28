class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :duration
      t.integer :weight

      t.timestamps
    end
  end
end
