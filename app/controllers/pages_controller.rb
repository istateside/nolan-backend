class PagesController < ApplicationController
  def home
  end

  def other
    @page_header = 'Other'
    @projects = Project.where(category: "Other", is_published: true)
    render 'project'
  end

  def comics
    @page_header = 'Comics'
    @projects = Project.where(category: "Comics", is_published: true)
    render 'project'
  end

  def illustrations
    @page_header = 'Illustrations'
    @projects = Project.where(category: "Illustrations", is_published: true)
    render 'project'
  end

  def about
    @about = Project.find_by(category: "About")
  end
end
