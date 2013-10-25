class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  # ----- add by me -----
  attr_accessible :name
  attr_accessible :user_ids
  # ---------------------
  
  scopify
end
