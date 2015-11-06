class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :imagen

      t.timestamps null: false
    end
  end
end
