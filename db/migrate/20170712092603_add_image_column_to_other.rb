class AddImageColumnToOther < ActiveRecord::Migration[5.0]
  def change
    add_attachment :others, :image
  end
end
