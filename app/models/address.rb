class Address < ActiveRecord::Base
  validates_presence_of :street, :city
  belongs_to :addressable, :polymorphic => true
end
