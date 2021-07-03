class VideofileUploader < CarrierWave::Uploader::Base
 
    #include CarrierWave::MiniMagick #for image processing
    include CarrierWave::Video  # for your video processing
    include CarrierWave::Video::Thumbnailer # for your video thumbnailer
 
  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_whitelist
    %w(mp4 mov)
  end


end
