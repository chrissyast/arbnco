class RenameUploadToInpFile < ActiveRecord::Migration[6.1]
  def change
    rename_table :uploads, :inp_files
  end
end
