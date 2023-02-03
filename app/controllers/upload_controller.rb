class UploadController < ApplicationController
  def create
    upload = Upload.create()
    file = request.body.read
    ParseFileJob.perform_later(file, upload.id)
    redirect_to(:action => "show", :id => upload.id)
  end

  def new
  end

  def show
    @upload = Upload.find(params[:id])
    puts @upload.completed
  end
end
