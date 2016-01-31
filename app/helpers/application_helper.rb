module ApplicationHelper

	# Returns the full title for each page
	def full_title(page_title = '')
		base_title = "AMEGAM"
		if page_title.empty?
			base_title
		else
			base_title + " | " + page_title
		end
	end

	# check if the page is active in order to change navbar li status
	def active_class(link_path)
  	current_page?(link_path) ? "active" : ""
 	end

end
