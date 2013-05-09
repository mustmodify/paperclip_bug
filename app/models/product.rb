class Product < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size, :name

  has_attached_file :image

  module CollectionFormatter
    def to_s
      "Products: #{self.map(&:name).join(', ')}"
    end
  end
end

