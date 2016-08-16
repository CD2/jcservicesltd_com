module ApplicationHelper

  def page_title
    content_tag(:title, @page_info.title) if @page_info&.title
  end

  def meta_description
    if @page_info&.meta_description
      tag :meta, name: :description, content: @page_info.meta_description
    end
  end

end
