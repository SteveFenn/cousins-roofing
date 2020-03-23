module ApplicationHelper
  def page_title
    case controller_name
    when 'pages'
      "Cousins Roofing | #{@page.meta_title || title}"
    when 'contacts'
      'Cousins Roofing | Leave us a message'
    else
      "Cousins Roofing"
    end
  end

  def page_description
    @page&.meta_description || ''
  end

  def page_route(path)
    page_path(path)
  end
end
