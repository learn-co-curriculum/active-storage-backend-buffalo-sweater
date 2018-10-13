class ApplicationSerializer < ActiveModel::Serializer

  # NOTE: This abstraction only works for properties called image
  # and does not consider many images.
  # def image_url
  #   # Inside of here, we're accessing the `get_image_url` key-value pair
  #   # that we passed to the serializer and `call`ing the callback with
  #   # the object's actual image object
  #   instance_options[:get_image_url].call(object.image)
  # end
end
