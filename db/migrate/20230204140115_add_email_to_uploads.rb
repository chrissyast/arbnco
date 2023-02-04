class AddEmailToUploads < ActiveRecord::Migration[6.1]
  def change
    add_column :uploads, :email_address, :string
  end
end
