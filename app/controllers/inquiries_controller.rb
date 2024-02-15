class InquiriesController < ApplicationController
  def index
    @inquiries = Inquiry.all
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    Inquiry.create(inquiry_params)
    redirect_to root_path
  end

  def destroy
    inquiry = Inquiry.find(params[:id])
    inquiry.destroy
    redirect_to root_path
  end

  def edit
    @inquiry = Inquiry.find(params[:id])
  end

  def update
    inquiry = Inquiry.find(params[:id])
    inquiry.update(inquiry_params)
    redirect_to root_path
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:reference_number, :invoice_number, :customer_email, :text)
  end


end
