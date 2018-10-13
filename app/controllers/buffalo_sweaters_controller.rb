# NOTE: So rendering all info about a BuffaloSweater is cool, but
# we really don't want to share the sweater_design every time, so
# we want a serializer to essentially hide that property
# so we're going to need to install the serializers gem

# The next few steps just make it easy to get the URL for the image
# inside of the serializers. Traditionally, it's been difficult.
# But in Ruby, there's a way to create a callback that keeps track of
# scope of where it's defined.

# We have a callback in ApplicationController that does just that.
# The second thing that we need to do is get that callback into
# the serializer, since the serializer doesn't have access to `url_for`.

# We do that by defining custom key-value pairs after `render json: ....`
# On both calls to render json that I need an image URL, I pass along
# the get_image_url callback so that the serializer has access to it.

class BuffaloSweatersController < ApplicationController
  def index
    # this is just like the regular setup! soon we'll deal with create
    # AND sending pictures across the internet :D
    buffalo_sweaters = BuffaloSweater.all
    render json: buffalo_sweaters, get_image_url: get_image_url
  end

  def create
    # now let's try to create again after adding the image method/ability
    buffalo_sweater = BuffaloSweater.create(buffalo_sweater_params)
    render json: buffalo_sweater, get_image_url: get_image_url
  end

  private

  def buffalo_sweater_params
    params.permit(:buffalo_name, :sweater_design, :image)
  end
end
