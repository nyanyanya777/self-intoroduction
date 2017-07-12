class AddsiteToEditer < ActiveRecord::Migration[5.0]
  def change
        add_column :editers, :site, :string
  end
end
