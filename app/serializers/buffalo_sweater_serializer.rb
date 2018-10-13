class BuffaloSweaterSerializer < ApplicationSerializer
  # serializers let us customize how our active model
  # object is converted into json! let's test
  attributes :id, :buffalo_name, :sweater_design, :image_url


  # Then we get to the serializer. If you have one model that has
  # attachments, this will be fine. But as you introduce more models
  # that do this, you'll want to put this into a base serializer.

  # Moving this into a base serializer is really easy.
  def image_url
    # Inside of here, we're accessing the `get_image_url` key-value pair
    # that we passed to the serializer and `call`ing the callback with
    # the object's actual image object
    instance_options[:get_image_url].call(object.image)
  end
end
