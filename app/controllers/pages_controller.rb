class PagesController < ApplicationController
  def home
  end

  def other
    @page_header = 'Other'
    @projects = Project.where(category: "Other")
    render 'project'
  end

  def comics
    @page_header = 'Comics'
    @projects = Project.where(category: "Comics")
    render 'project'
  end

  def illustrations
    @page_header = 'Illustrations'
    @projects = Project.where(category: "Illustrations")
    render 'project'
  end

  def about
    @about = Project.find_by(category: "About")
  end
end
