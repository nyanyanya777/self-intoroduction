class RenameEditorsToEditers < ActiveRecord::Migration[5.0]
  def change
    rename_table :editors, :editers
  end
end
