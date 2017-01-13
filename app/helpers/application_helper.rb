module ApplicationHelper

	def menu_hl(path)
		'menu-hl' if current_page?(path)
	end
end
