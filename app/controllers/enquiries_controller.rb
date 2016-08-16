class EnquiriesController < ApplicationController
 
  def new
    @page = Cd2Cms::Page.get_from_url('contact')
    @page_info = @page.page_info
    @enquiry = Cd2Cms::Enquiry.new
  end

  def create
  end

end
