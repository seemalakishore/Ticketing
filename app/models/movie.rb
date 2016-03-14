class Movie < ActiveRecord::Base
 
  #default_scope {order("created_at DESC")}
  has_many :movies_theaters, :dependent => :destroy
  has_many :theaters, :through => :movies_theaters
  
  def self.movies_list
    Movie.all.map(&:name)
  end
end

