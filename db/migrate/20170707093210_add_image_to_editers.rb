class AddImageToEditers < ActiveRecord::Migration[5.0]
  def change
  add_attachment :editers, :image
  end
end
