class AddArtIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :art_id, :integer
  end
end
