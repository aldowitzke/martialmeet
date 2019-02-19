class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy, :destroy_specific]
  # permit non-user to see the index
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = policy_scope(Offer)
    @offers = Offer.all
    @users = User.all
  end

  def show
  end

  def new
    @offer = Offer.new
    # authorize access to offers/new page for all users
    authorize @offer
  end

  def create
    # check if authorize @offer is needed for create (scope)
    @offer = Offer.new(offer_params)
    @offer.teacher = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to @offer
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  def specific
    @offers = policy_scope(Offer).where(teacher: current_user)
    authorize @offers
  end

  def destroy_specific
    @offer.destroy
    redirect_to your_classes_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:title, :fight_model, :description, :address, :datetime, :price)
  end
end
