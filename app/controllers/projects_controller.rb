class ProjectsController < ApplicationController
	
	def index
		@projects = Project.last_created_projects(10)
		if @projects.empty?
			render template: 'projects/no_projects'
		end
	end

	def show
		unless @project = Project.find_by(id: params[:id])
			render 'no_projects_found'
		end
	end

	def new
		@project = Project.new	
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to projects_path
		else
		 @errors = @project.errors.full_messages
		 render 'new'
		end
	end
	
	private
	def project_params
		params.require(:project).permit(:name, :description)
	end

end

