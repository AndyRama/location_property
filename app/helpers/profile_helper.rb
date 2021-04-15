module ProfileHelper
  def cover_image_url user     
    user.cover_image.attached? ? url_for(user.cover_image) : 'placeholder.png'   
  end
end