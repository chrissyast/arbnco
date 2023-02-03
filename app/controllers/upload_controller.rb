class UploadController < ApplicationController
  def create
    upload = Upload.create()
    file = request.body
    ParseFileJob.perform_now(file, upload.id)
    redirect_to(:action => "show", :id => upload.id)
  end

  def new
  end

  def show
  end
end
