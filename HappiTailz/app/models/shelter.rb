class Shelter < ActiveRecord::Base
  attr_accessible :address, :name, :photo

        validates :name, :address, :photo, :presence => true
        validates :name, :uniqueness => true  

        has_many :animals

end
