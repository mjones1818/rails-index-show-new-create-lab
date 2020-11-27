class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    coupon = Coupon.create(coupon_params(params_array))
    redirect_to coupon_path(coupon)
  end

  private

  def coupon_params(array_args)
    params.require(:coupon).permit(array_args)
  end

  def params_array
    [:store, :coupon_code]
  end
end