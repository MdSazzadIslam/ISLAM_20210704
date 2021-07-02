class Video < ApplicationRecord
#validates :title, :name, presence: true
has_one_attached :video
mount_uploader :thumbnail, ThumbnailUploader
mount_uploader :videofile, VideofileUploader
is_impressionable
acts_as_votable
# validates_attachment :video, content_type: { content_type: "media/mp4/mov" }
end
