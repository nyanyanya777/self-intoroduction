class AddSiteToOther < ActiveRecord::Migration[5.0]
  def change
    add_column :others, :site, :string
  end
end
