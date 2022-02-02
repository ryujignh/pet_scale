class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.belongs_to :pet_type
      t.belongs_to :user
      t.string :name

      t.timestamps
    end
  end
end
