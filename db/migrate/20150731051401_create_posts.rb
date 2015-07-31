class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
