class ProjectsController < ApplicationController

	def index
		@search = Project.search(params[:q])
		if @search 
			@search.build_condition
			@projects = @search.result
		else 
			@projects = Project.all
		end 
	end 

	def new
		@project = Project.new
	end 

	def create
		@project = Project.new(project_params)
		@project.company = current_user.company
		if @project.save
			redirect_to @project 
		else
			render :new
		end 
	end

	def edit
		@project = Project.find(params[:id])
	end

	def show
		@project = Project.find(params[:id])
	end 


	def update
		@project = Project.find(params[:id])
		@project.update_attributes(project_params)
		if @project.save
			redirect_to @project
		else
			render :edit
		end 
	end 

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path  
	end 

	private 

	def project_params
		params.require(:project).permit(:title, :location, :description, :compensation)
	end  
end
