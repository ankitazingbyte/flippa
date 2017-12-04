class Avatar < ApplicationRecord
	belongs_to :avatarable, polymorphic: true, optional: true
	mount_uploader :avatar, AvatarUploader
end
