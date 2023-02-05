class ChangeUploadIdsToInpFileIds < ActiveRecord::Migration[6.1]
  def change
    rename_column :compliances, :upload_id, :inp_file_id
    rename_column :constructions, :upload_id, :inp_file_id
    rename_column :dhw_generators, :upload_id, :inp_file_id
    rename_column :doors, :upload_id, :inp_file_id
    rename_column :generals, :upload_id, :inp_file_id
    rename_column :glasses, :upload_id, :inp_file_id
    rename_column :hvac_systems, :upload_id, :inp_file_id
    rename_column :rec_projects, :upload_id, :inp_file_id
    rename_column :rec_users, :upload_id, :inp_file_id
    rename_column :walls, :upload_id, :inp_file_id
    rename_column :windows, :upload_id, :inp_file_id
    rename_column :zones, :upload_id, :inp_file_id
  end
end
