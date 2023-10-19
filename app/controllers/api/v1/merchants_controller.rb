class Api::V1::MerchantsController < ApplicationController
  before_action :find_merchant, only: [:show, :items]

  def index
    render json: MerchantSerializer.new(Merchant.all)
  end

  def show
    render json: MerchantSerializer.new(find_merchant)
  end

  private

  def find_merchant
    @merchant = Merchant.find(params[:id])
  end
end