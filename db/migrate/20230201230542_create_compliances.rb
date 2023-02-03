class CreateCompliances < ActiveRecord::Migration[6.1]
  def change
    create_table :compliances do |t|
      t.string :name
      t.string :epc_type
      t.string :br_stage
      t.string :eng_heritage
      t.string :epc_language
      t.string :shell_and_core
      t.string :modular_portable
      t.string :distress_purchase
      t.string :air_con_installed
      t.string :air_con_kw
      t.string :air_con_kw_exact
      t.string :air_con_inspection
      t.string :alt_sys_consider
      t.belongs_to :upload, null: false, foreign_key: true
      t.timestamps
    end
  end
end
