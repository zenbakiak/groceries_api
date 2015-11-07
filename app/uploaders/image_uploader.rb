# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def default_url
  #   "placeholders/image.png"
  # end

  version :icon do
    process resize_to_fit: [50, 50]
  end

  version :thumb do
    process resize_to_fit: [250, 250]
  end

  version :profile do
    process resize_to_fit: [600, 600]
  end

  def extension_white_list
    %w(jpg jpeg gif png pdf)
  end
end
