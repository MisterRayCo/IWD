class Animal < ActiveRecord::Base
  attr_accessible :age, :animaltype, :gender, :name, :photo, :shelter_id

        validates :name, :animaltype, :gender, :photo, :age, :presence => true
        validates :name, :uniqueness => true
        validates :age, :numericality => {:greater_than => 0} 

	belongs_to :shelter




end
