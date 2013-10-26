class Vodka < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :images, :as => :attachable, :inverse_of => :attachable

  accepts_nested_attributes_for :images, allow_destroy: true
  attr_accessible :images_attributes
end
