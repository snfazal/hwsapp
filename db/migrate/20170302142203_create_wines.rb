class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :type
      t.string :country
      t.string :region
      t.integer :rating
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
