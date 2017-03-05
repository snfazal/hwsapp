class RemovePostIdFromFavorites < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :post_id, :integer
  end
end
