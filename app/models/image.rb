class Image < ActiveRecord::Base
  attr_accessible :attachable_id, :attachable_type, :photo
  belongs_to :attachable, :polymorphic => true
  has_attached_file :photo, :url => "/system/:attachment/:id/:style/:filename"
end
