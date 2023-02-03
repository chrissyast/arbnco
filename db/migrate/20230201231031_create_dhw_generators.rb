class CreateDhwGenerators < ActiveRecord::Migration[6.1]
  def change
    create_table :dhw_generators do |t|
      t.string :name
      t.string :heat_gen_type
      t.string :fuel_type
      t.string :dhw_gen_seff
      t.string :heat_gen_post98
      t.string :store_system
      t.string :store_vol
      t.string :store_insulat_type
      t.string :store_insulat_thick
      t.string :sec_circulation
      t.string :heat_source
      t.string :hvac_system_eff
      t.string :chp
      t.string :isbem_id
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
