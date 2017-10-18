class AddIsPublishedToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :is_published, :boolean, default: true
  end
end
