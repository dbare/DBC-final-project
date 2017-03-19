class LinksController < ApplicationController

	before_action :require_valid_user
	
	def new
		@link = Link.new
		@user = current_user
	end

	def create
		
		@link = Link.new(link_params)
		
		if @link.save

			@link.update_attribute(:user_id, current_user.id)

			redirect_to user_path(current_user)
		else
			p "*" * 100
			p "NOPE"
			p "*" * 100
			render 'new'
		end
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		if @link.update(link_params)	
			redirect_to user_path(@link.user)
		else
			render 'edit'
		end
	end

	def destroy
		@link = Link.find(params[:id])
		@user = @link.user
		@link.destroy
		redirect_to user_path(@user)  
	end 





private

def link_params
	params.require(:link).permit(:link_type, :url, :description)
end

end
