class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	 mount_uploader :imagen, ImagenUploader 
end
