class ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with Project.all
  end

  def show
    respond_with Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])

    project.update(project_params)

    respond_with project
  end

  def create
    project = Project.create(project_params)

    project.save

    respond_with project
  end

  def destroy
    project = Project.find(params[:id])

    respond_with project.destroy
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
