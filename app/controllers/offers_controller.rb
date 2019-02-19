class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.all
  end

  def show; end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.create(offer_params)
  end

  def edit; end

  def update
    @offer.update(offer_params)
  end

  def destroy
    @offer.destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:fight_model, :description, :address, :datetime, :price)
  end
end
