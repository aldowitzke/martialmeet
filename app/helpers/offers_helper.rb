module OffersHelper
  def offer_status_icon
    if @offer.student && (@offer.teacher == current_user)
      tag.i(class: "fas fa-walking")
    elsif @offer.teacher == current_user
      tag.i(class: "fas fa-door-open")
    elsif @offer.student
      tag.i(class: "fas fa-check")
    else
      link_to tag.i(class: "fas fa-sign-in-alt"), join_offer_path, method: :patch
    end
  end
end
