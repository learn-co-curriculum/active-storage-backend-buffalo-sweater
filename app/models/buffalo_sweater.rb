class BuffaloSweater < ApplicationRecord
  # looks good (so far!)
  # now, we can connect it to the files we upload
  has_one_attached :image
end
