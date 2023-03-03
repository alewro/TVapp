class PagesController < ApplicationController

  def index
  end

  def counting
    @story = Story.find(params[:id])
    @coupon = Coupon.last.quantity
    @coupon -= @story.weight
    if @coupon > 0
      Coupon.last.update(quantity: @coupon)
      redirect_to stories_path
    else
      Coupon.last.update(quantity: @coupon)
      redirect_to end_path
    end
    
  end

  def end 
  end

end
