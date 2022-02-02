class CreateWeightRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :weight_records do |t|
      t.belongs_to :pet
      t.integer :weight
      t.date :recorded_on

      t.timestamps
    end
  end
end
