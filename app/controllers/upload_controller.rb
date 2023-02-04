class UploadController < ApplicationController
  def create
    files = params[:files]
    files.each do |file|
      upload = Upload.create(allowed_params)
      ParseFileJob.perform_later(file.read, upload.id)
    end
    redirect_to(:action => "success")
  end

  def new
  end

  def show
    @upload = Upload.find(params[:id])
  end

  def allowed_params
    params.require(:upload).permit(:email_address)
  end
end
