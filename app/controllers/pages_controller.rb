class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:main_page, :services, :before_and_after_page, :about, :contact, :hk_artwork_requirements, :hk_conversion_tables, :hk_size_references, :hk_design_with_type, :hk_choosing_colour, :hk_educational_videos ]
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

	def before_and_after_page
		@before_and_afters = BeforeAndAfter.all
	end

	def about
		
	end

	def contact
		
	end

	def hk_artwork_requirements
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_artwork_requirements.html.erb"}
		end
	end

	def hk_conversion_tables
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_conversion_tables.html.erb"}
		end
	end

	def hk_size_references
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_size_references.html.erb"}
		end
	end

	def hk_design_with_type
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_design_with_type.html.erb"}
		end
	end

	def hk_choosing_colour
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_choosing_colour.html.erb"}
		end
	end

	def hk_educational_videos
		respond_to do |format|
			format.html {render :template => "/pages/helpful_knowledge/hk_educational_videos.html.erb"}
		end
	end
end
