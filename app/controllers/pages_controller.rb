class PagesController < ApplicationController
  def home

  end

  def other
    @projects = Project.where(type: "Other")
  end

  def comics
    @projects = Project.where(type: "Comics")
  end

  def illustrations
    @projects = Project.where(type: "Illustrations")
  end

  def about

  end
end
