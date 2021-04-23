module PostsHelper
  def post_thumbnail_url(post)
    post.image.attached? ? url_for(post.image) : "placeholder.png"
    image_tag(img, class: "property-thumb")
  end
end
