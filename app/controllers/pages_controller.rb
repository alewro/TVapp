class PagesController < ApplicationController

  def index
  end

  def counting
    @story = Story.find(params[:id])
    @coupon = Coupon.last.quantity
    @coupon = @coupon - @story.weight
    Coupon.last.update(quantity: @coupon)
    redirect_to stories_path
  end

  def date
    if Coupon.where(:date => Time.now.to_date).present?
        redirect_to stories_path
    else
        @coupon = Coupon.new(:date => Time.now.to_date, :quantity => 60)
        @coupon.save
        redirect_to stories_path
    end
  end

end
