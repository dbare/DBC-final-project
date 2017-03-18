class ProjectsController < ApplicationController

	before_action :find_project, except: [:index, :new, :create]

	def index
		@projects = Project.all 
	end

	def new
		@project = Project.new
	end 

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project 
		else
			render :new
		end 
	end

	def edit
	end

	def show
		@project = find_project
	end 


	def update
		@project = find_project
		@project.update_attributes(project_params)
		if @project.save
			redirect_to @project
		else
			render :edit
		end 
	end 

	def destroy
		find_project.destroy
		redirect_to projects_path  
	end 

	private 

	def find_project
		Project.find(params[:id])
	end 

	def project_params
		params.require(:project).permit(:location, :description, :compensation)
	end  
end
