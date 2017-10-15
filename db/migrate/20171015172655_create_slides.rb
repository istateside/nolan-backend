class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.text :description
      t.integer :position

      t.references :project
      t.timestamps
    end
  end
end
