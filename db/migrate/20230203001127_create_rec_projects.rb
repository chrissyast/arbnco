class CreateRecProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :rec_projects do |t|
      t.string :name
      t.belongs_to :upload, null: false, foreign_key: true
      t.timestamps
    end
  end
end
