class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:main_page, :services, :about, :contact]
	def admin
		respond_to do |format|
		  format.html {render :layout => 'admin'}
		end
		
	end

	def main_page
		@recent_projects = Project.where(recent: true)
	end

	def services
		
	end

	def about
		
	end

	def contact
		
	end
end
