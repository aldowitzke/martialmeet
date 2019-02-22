module OffersHelper
  def offer_status_icon
    if @offer.student && (@offer.teacher == current_user)
      tag.h3("#{@offer.student.name} joined your class!")
    elsif @offer.teacher == current_user
      tag.p("You have no student yet")
    elsif @offer.student
      tag.p("You joined this class")
    elsif user_signed_in?
      link_to "Join Class", join_offer_path, class: "btn btn-primary", id: "join-button", method: :patch
    else
      link_to "Join Class", new_user_session_path, class: "btn btn-primary", id: "join-button"
      # link_to tag.i(class: "btn btn-primary", id: "join-button"), join_offer_path, method: :patch
    end
  end
end
