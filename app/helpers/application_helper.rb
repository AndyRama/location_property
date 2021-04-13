module ApplicationHelper
  def profile_picture current_user, width = 100
    thumb = current_user.images.present? ? current_user.images.thumb.url : "placeholder.png"
    image_tag "id.png", width: width, class: "profile_pic img-circle ml-4"
  end

end
 