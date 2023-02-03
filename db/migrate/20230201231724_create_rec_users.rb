class CreateRecUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :rec_users do |t|
      t.string :name
      t.string :code
      t.string :user_in_out
      t.string :rec_comment
      t.belongs_to :upload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
