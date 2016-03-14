class Customer < ActiveRecord::Base
 validates_presence_of :name, :email
 has_many :bookings
 has_one :address, :as => :addressable, :dependent => :destroy
end
