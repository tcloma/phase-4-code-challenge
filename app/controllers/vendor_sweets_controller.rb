class VendorSweetsController < ApplicationController
  def create
    vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if vendor_sweet.save
      render json: vendor_sweet
    else
      render json: { errors: vendor_sweet.errors.full_messages }
    end
  end

  def destroy
    vendor_sweet = VendorSweet.find_by(id: params[:id])
    if vendor_sweet.destroy
      render json: {}
    else
      render json: { error: 'VendorSweet not found' }
    end
  end

  private

  def vendor_sweet_params
    params.permit(:price, :vendor_id, :sweet_id)
  end
end
