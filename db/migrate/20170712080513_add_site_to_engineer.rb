class AddSiteToEngineer < ActiveRecord::Migration[5.0]
  def change
    add_column :engineers, :site, :string
  end
end
