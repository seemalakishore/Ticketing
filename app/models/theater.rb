class Theater < ActiveRecord::Base
  validates_presence_of :owner, :name
  #validates :owner, :name, :presence => true
  validates :theater_type, inclusion: { in: ["Single", "Multiplex"],
    message: "%{value} is not a valid type of theater" }
  has_one :address, :as => :addressable, :dependent => :destroy
  has_many :movies_theaters, :dependent => :destroy
  has_many :movies, :through => :movies_theaters
  
  scope :single_theaters, -> { where(theater_type: 'Single') }
  scope :multiplexes, -> { where(theater_type: 'Multiplex') }
  scope :type_theaters, ->(type){ where("theater_type = ?", type)}
end
