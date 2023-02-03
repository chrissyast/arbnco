class UploadController < ApplicationController
  def create
    upload = Upload.create()
    file = request.body
    ParseFileJob.perform_now(file, upload.id)
  end

  def new
  end
end
