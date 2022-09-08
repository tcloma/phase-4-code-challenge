class VendorsController < ApplicationController
  def index
    vendors = Vendor.all
    render json: vendors
  end

  def show
    vendor = Vendor.find_by(id: params[:id])
    if !vendor.nil?
      render json: vendor, serializer: VendorWithVendorSweetSerializer
    else
      render json: { error: "Vendor not found" }
    end
  end
end
