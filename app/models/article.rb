class Article < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	has_many :comments
	has_many :avatars, as: :avatarable
end
