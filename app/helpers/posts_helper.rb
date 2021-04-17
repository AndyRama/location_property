module PostsHelper
  def post_thumbnail(post)
    img = post.image.present? ? post.image.thumb.url : "placeholder.png"
    image_tag img, class: "property-thumb"
  end

  def post_thumbnail_url(post)
    post.image.present? ? post.image.thumb.url : "placeholder.png"
  end
end
