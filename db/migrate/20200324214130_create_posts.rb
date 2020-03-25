class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.boolean :shopping
      t.boolean :phone_call
      t.boolean :mail
      t.boolean :supplies
      t.string :comments

      t.timestamps
    end
  end
end
