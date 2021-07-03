class Video < ApplicationRecord
validates :title, :file,  :categoryId, presence: true
has_one_attached :video
has_many_attached :thumbnails

#mount_uploader :thumbnails, ThumbnailUploader
mount_uploader :file, VideofileUploader

validate :file_size_under_th_mb
 
    def file_size_under_th_mb
       errors[:file] << "should be less than 200MB" if file.size > 200.megabytes
    end
 

end
