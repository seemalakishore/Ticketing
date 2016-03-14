class Movie < ActiveRecord::Base
  validates_presence_of :name, :director
  default_scope {order("created_at DESC")}
  has_many :movies_theaters, :dependent => :destroy
  has_many :theaters, :through => :movies_theaters
end

