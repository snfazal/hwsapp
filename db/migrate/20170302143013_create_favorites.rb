class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :wine, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
