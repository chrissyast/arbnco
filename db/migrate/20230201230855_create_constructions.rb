class CreateConstructions < ActiveRecord::Migration[6.1]
  def change
    create_table :constructions do |t|
      t.string :name
      t.string :u_value
      t.string :cm
      t.string :metal_cladding
      t.string :u_value_corr
      t.string :the
      t.string :x_type
      t.string :is
      t.string :glass
      t.string :tot_sol_trans
      t.string :lig_sol_trans
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
