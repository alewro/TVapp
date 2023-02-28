class PagesController < ApplicationController
 skip_before_action :verify_authenticity_token, only: [ :counting ]

  def index
  end

  def counting
    @story = Story.find(params[:id])
    @coupon = Coupon.last.quantity
    @coupon = @coupon - @story.weight
    Coupon.last.update(quantity: @coupon)
    redirect_to stories_path
  end
end
