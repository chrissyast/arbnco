class AddCompletedToUpload < ActiveRecord::Migration[6.1]
  def change
    add_column(:uploads, :completed, :boolean, default: false)
  end
end
