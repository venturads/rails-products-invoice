class InvoicesController < ApplicationController
  before_action :find_post
  
  def index
    @invoice = @product.invoices.create(params[:invoice].permit(:content))
    @invoice.product_id = current_product.id
    @invoice.save
    redirect_to post_path(@invoice)
  end
  def show
  end
  def new
    @invoice = Invoice.new
  end
  
  private
  
  def find_product
    @product = Product.find(params[:product_id])
  end
end



    
   