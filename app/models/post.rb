class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :room_photo, PostUploader #carrierwave用記載

end
