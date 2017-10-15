class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :position

      t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
