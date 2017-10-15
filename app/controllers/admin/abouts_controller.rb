class Admin::AboutsController < AdminController
  before_action :set_about

  def show
  end

  def edit
  end

  def update
    if @about.update(about_params)
      redirect_to :admin_about
    else
      render :edit
    end
  end

  private
  def set_about
    @about = Project.where(category: "About").first_or_create!
  end

  def about_params
    params.require(:project).permit(:cover_image, :description)
  end
end
