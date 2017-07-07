class CreateEditors < ActiveRecord::Migration[5.0]
  def change
    create_table :editors do |t|
      t.string :title
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
