class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :photo
      t.string :name
      t.text :address
      


      t.timestamps
    end
  end
end
