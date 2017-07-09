class AddEditerIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :editer_id, :integer
  end
end
