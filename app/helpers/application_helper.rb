module ApplicationHelper

	def require_valid_user
		if !current_user
			flash[:error] = "You must be logged in to do that."
			redirect_to login_path
		end 
	end

end
