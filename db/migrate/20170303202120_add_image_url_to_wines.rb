class AddImageUrlToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :image_url, :string
  end
end
