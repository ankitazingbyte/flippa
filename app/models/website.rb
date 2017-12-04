class Website < ApplicationRecord
	 mount_uploader :avatar, AvatarUploader
	 has_many :images
   accepts_nested_attributes_for :images
end
