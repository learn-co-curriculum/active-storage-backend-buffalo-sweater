class ApplicationController < ActionController::API
  def get_image_url
    # This method `get_imge_url` returns a callback or LAMBDA that
    # takes in an image/attachment, tries to return the URL for the
    # image, and if it runs into an error, returns an empty string
    -> (image) do
      begin
        url_for(image)
      rescue Module::DelegationError
        ""
      end
    end
  end
end
