module ApplicationHelper

  def avatar_url(user)
    if user.facebook_picture_url.present?
      user.facebook_picture_url
    elsif user.photo.present?
      cl_image_path(user.photo.path)
    else
      "http://placehold.it/30x30"
    end
  end

  # def background_url(my_service)
  #   my_service.photos.sample.try(:path) || "http://placehold.it/30x30"
  # end
end

