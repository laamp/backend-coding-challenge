class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :name
      t.string :content, null: false

      t.timestamps
    end
    add_index :comments, :user_id
    add_foreign_key :comments, :users, column: :user_id
  end
end
