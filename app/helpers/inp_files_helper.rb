module InpFilesHelper
  def self.convert_to_file(file_data, id)
    File.new("inp_#{id}.inp", "w+")
    File.open("inp_#{id}.inp", "w+") do |f|
      file_data.class.reflect_on_all_associations.each do |a|
        association_name = a.plural_name.upcase.singularize.gsub("_", "-") # name of the association, e.g. "Doors"
        association_object = file_data.public_send(a.name) # the object for the association itself
        if association_object.is_a? ActiveRecord::Associations::CollectionProxy # (i.e. has-many relationship)
          association_object.each do |a_o|
            write_association(a_o, association_name, f)
          end
        else
          write_association(association_object, association_name, f)
        end
      end
    end
    return File.open("inp_#{id}.inp")
  end

  def self.write_association(object, association_name, file)
    file.write("\"#{object[:name]}\" = #{association_name} \n")
    object.attributes.except("id", "inp_file_id", "created_at", "updated_at", "name").each do |key, value|
      if value
        key = key.upcase.gsub("_", "-")
        file.write("\t#{key.ljust(20, ' ')} = \"#{value}\" \n")
      end
    end
    file.write("\t..\r")
  end
end
