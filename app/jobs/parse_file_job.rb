class ParseFileJob < ApplicationJob
  queue_as :default
  self.log_arguments = false

  def perform(file, upload_id)
    blocks = file.split("..")
    blocks.each do |b|
      type = ""
      args = {}
      args[:upload_id] = upload_id
      lines = b.split("\n").select {|l| l[0] != "$" and l.include? "="}
      lines.each_with_index do |l, i|
        pair = l.split("=").map do |l|
          l = l.strip
          l = l.gsub("\"", "")
        end
        if i == 0 # header information
          args[:name] = pair[0]
          type = pair[1].split("-").map(&:capitalize).join
        elsif pair[0] and pair[0] != "" # all other properties
          key = pair[0].downcase.gsub("-", "_") # put it into rails-style casing
          key = "x_type" if key == "type" # 'type' is a reserved word
          value = pair[1]
          args[key] = value
          end

      end
      if type.length > 0
        object_record = "#{type}".constantize.new(args)
        object_record.save
      end
    end
    Upload.find(upload_id).update(:completed => true)
  end
end
