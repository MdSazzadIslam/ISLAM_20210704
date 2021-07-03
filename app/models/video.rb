class Video < ApplicationRecord
validates :title, :file, :categoryId, presence: true
has_one_attached :video
has_many_attached :thumbnails


#mount_uploader :thumbnails, ThumbnailUploader
mount_uploader :file, VideofileUploader
#is_impressionable
#acts_as_votable
#validates_attachment :file, content_type: { content_type: "media/mp4/mov" }
validate :file_size_under_th_mb
 
   def uploaded_file=(file_field)
    self.name = base_part_of(file_field.original_filename)
    #self.data = file_field.read
    self.path = Rails.root + "/public/uploads/" + self.name
  end

  def base_part_of(file_name)
    File.basename(file_name).gsub(/[^\w._-]/, '')
  end
 
 
    def file_size_under_th_mb
       errors[:file] << "should be less than 200MB" if file.size > 200.megabytes
    end
 

end
