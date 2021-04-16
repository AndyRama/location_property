module ApplicationHelper

  def profile_picture current_user, width = 100
    thumb = current_user.image?.present? ? current_user.image.thumb.url : "placeholder.png"
    # image_tag thumb, width: width, class: "profile_pic img-circle ml-4"
    image_tag "id.png", width: width, class: "profile_pic img-circle ml-4"
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert' || type == 'danger'
      text = "toastr['#{type}']('#{message}');"
      flash_messages << text.html_safe unless message.blank?
    end

    "<script>$(function(){ #{ flash_messages.join("\n") } });</script>".html_safe if flash_messages.any?
  end
end
