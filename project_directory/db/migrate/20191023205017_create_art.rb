class CreateArt < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end
