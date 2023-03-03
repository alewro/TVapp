class PagesController < ApplicationController

  def index
  end

  def counting
    @story = Story.find(params[:id])
    @coupon = Coupon.last.quantity
    @coupon -= @story.weight
    Coupon.last.update(quantity: @coupon)
    redirect_to stories_path
  end

end
