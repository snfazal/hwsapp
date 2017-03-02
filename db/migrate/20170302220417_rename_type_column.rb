class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :wines, :type, :kind
  end
end
