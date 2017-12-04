class Image < ApplicationRecord
   mount_uploader :avatar, AvatarUploader
   belongs_to :website, optional: true
end
