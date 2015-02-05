module ApplicationHelper

  def navigation_element(label, path)
    "<li role='presentation' class='#{'active' if current_page?(path)}'>#{link_to(label, path)}</li>".html_safe
  end
end
