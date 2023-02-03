class CreateDoors < ActiveRecord::Migration[6.1]
  def change
    create_table :doors do |t|
      t.string :name
      t.string :area
      t.string :construction
      t.string :x_type
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
