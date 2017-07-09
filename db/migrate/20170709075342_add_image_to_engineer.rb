class AddImageToEngineer < ActiveRecord::Migration[5.0]
  def change
     add_attachment :engineers, :image
  end
end
