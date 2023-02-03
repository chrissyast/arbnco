class UploadController < ApplicationController
  def create
    file = request.body
    ParseFileJob.perform_now(file)
  end

  def new
  end
end
