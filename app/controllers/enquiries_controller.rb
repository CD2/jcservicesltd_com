class EnquiriesController < ApplicationController
 
  before_action :set_page, only: [:new, :create]

  def new
    @enquiry = Cd2Cms::Enquiry.new
  end

  def create
    @enquiry = Cd2Cms::Enquiry.new(enquiry_params)
    if @enquiry.save
      redirect_to thanks_enquiries_path
    else
      render :new
    end
  end

  def thanks
    render text: 'thanks'
  end


  private

  def set_page
    @page = Cd2Cms::Page.get_from_url('contact')
    @page_info = @page.page_info
  end


  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :body)
  end


end
