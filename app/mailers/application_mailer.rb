class ApplicationMailer < ActionMailer::Base
  default from: ENV['SENDGRID_FROM_ADDRESS']
  layout 'mailer'
end
