module ApplicationHelper

	#Full title of a page
	def full_title(page_title = '')
    base_title = "Digitech Apple"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
