class SetPositionsOnProjectsAndSlides < ActiveRecord::Migration[5.1]
  def set_project_indices(projects)
    projects.each.with_index(1) do |project, idx|
      project.update_column :position, idx
    end
  end

  def up
    set_project_indices(Project.where(category: 'Illustrations').order(:updated_at))
    set_project_indices(Project.where(category: 'Comics').order(:updated_at))
    set_project_indices(Project.where(category: 'Other').order(:updated_at))

    Project.all.each do |project|
      project.slides.order(:updated_at).each.with_index(1) do |slide, idx|
        slide.update_column :position, idx
      end
    end
  end
end
