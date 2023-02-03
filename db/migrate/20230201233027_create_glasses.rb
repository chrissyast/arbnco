class CreateGlasses < ActiveRecord::Migration[6.1]
  def change
    create_table :glasses do |t|
      t.string :u_value
      t.string :tot_sol_trans
      t.string :lig_sol_trans
      t.belongs_to :upload, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
