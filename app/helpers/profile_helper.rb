module ProfileHelper
  def cover_image_url user
    user.cover_image.present? ? user.cover_image_url : asset_url("placeholder.png")
  end

  def property_photo_url(property)
    property.photo.present? ? property.photo.url : asset_url("placeholder.png")
  end
end
