class CreateWalls < ActiveRecord::Migration[6.1]
  def change
    create_table :walls do |t|
      t.string :name
      t.string :x_type
      t.string :type_env
      t.string :area
      t.string :length
      t.string :pitch
      t.string :orientation
      t.string :construction
      t.string :multiplier
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
