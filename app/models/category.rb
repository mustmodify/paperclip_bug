class Category < ActiveRecord::Base
  attr_accessible :string

  has_many :products, :extend => Product::CollectionFormatter

end

