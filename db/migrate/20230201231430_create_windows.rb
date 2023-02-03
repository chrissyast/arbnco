class CreateWindows < ActiveRecord::Migration[6.1]
  def change
    create_table :windows do |t|
      t.string :name
      t.string :area
      t.string :glass
      t.string :dev_proj_ratio
      t.string :aspect_ratio
      t.string :frame_factor
      t.string :shading_position
      t.string :shading_colour
      t.string :shading_translucency
      t.string :shading_factor
      t.string :brise_soleil
      t.string :disp_wind
      t.string :multiplier
      t.string :roof_light_cover
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
