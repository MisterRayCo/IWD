class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :photo
      t.string :name
      t.string :animaltype
      t.integer :age
      t.string :gender
      t.integer :shelter_id


      t.timestamps
    end
  end
end
