class UploadMailer < ApplicationMailer
  def complete
    @id = params[:id]
    mail(to: params[:to], subject: "We've processed your file!")
  end
end
