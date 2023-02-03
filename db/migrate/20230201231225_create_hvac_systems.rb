class CreateHvacSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :hvac_systems do |t|
      t.string :name
      t.string :x_type
      t.string :heat_source
      t.string :chp
      t.string :fuel_type
      t.string :heat_rec_system
      t.string :aux_energy_corr
      t.string :heat_sseff
      t.string :heat_gen_seff
      t.string :eff_default_heat
      t.string :heat_rec_var_eff
      t.string :cool_gen_seer
      t.string :cool_gen_eer
      t.string :metering
      t.string :cool_sseer
      t.string :sfp_check
      t.string :variable_speed_pump
      t.string :duct_leakage_pc
      t.string :cen_time_ctrl
      t.string :optimum_start
      t.string :room_time_ctrl
      t.string :room_temp_ctrl
      t.string :weather_comp
      t.string :mixed_mode
      t.string :chiller_type
      t.string :fuel_type_cool
      t.string :sfp
      t.string :dhw_served_ref
      t.string :isbem_id
      t.string :heat_rec_seff
      t.string :eff_default_cool
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
