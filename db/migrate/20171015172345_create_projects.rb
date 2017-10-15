class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :category 
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end
