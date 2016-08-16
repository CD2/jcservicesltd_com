class PagesController < ApplicationController
  
  def show
    @page = Cd2Cms::Page.get_from_url(params[:id])
    @page_info = @page.page_info
    if @page_info.home_page && params[:id]
      redirect_to root_url, :status => 301
    else
      render @page.layout unless @page.layout.nil?
    end
  end

end
