class Admin::ProjectsController < AdminController
  before_action :set_project, only: [:show, :edit, :update]
  def index
    if params[:category]
      @projects = Project.where(category: params[:category])
    else
      @projects = Project.where.not(category: 'About')
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to admin_project_url @project
    else
      render :edit
    end
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to admin_project_url @project
    else
      render :new
    end
  end

  def new
    @project = Project.new
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_url
  end

  private
  def project_params
    params.require(:project).permit(
      :title,
      :category,
      :description,
      {
        cover_image_attributes: [:attachment, :id, :_destroy]
      },
      {
        slides_attributes: [
          :description,
          :id,
          :_destroy,
          {
            image_attributes: [:id, :attachment]
          }
        ]
      }
    )
  end

  def set_project
    @project = Project.find(params[:id])
    @cover_image = @project.cover_image || @project.build_cover_image
  end
end
