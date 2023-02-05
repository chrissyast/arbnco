class InpFilesController < ApplicationController
  def upload
    files = params[:files]
    files.each do |file|
      upload = InpFile.create(allowed_params)
      ParseFileJob.perform_later(file.read, upload.id)
    end
    redirect_to(:action => "success")
  end

  def new
  end

  def show
    @inp_file = InpFile.find(params[:id])
  end

  def allowed_params
    params.require(:upload).permit(:email_address)
  end
end
