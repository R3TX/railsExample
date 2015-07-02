class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :contenido
      t.string :user_id

      t.timestamps
    end
  end
end
