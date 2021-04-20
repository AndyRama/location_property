module ProfileHelper
  def cover_image_url user, width = 100
    user.cover_image.present? ? user.cover_image_url : asset_url("placeholder.png")
    image_tag "id.png", width: width, class: "profile_pic img-circle ml-4"
  end
end
