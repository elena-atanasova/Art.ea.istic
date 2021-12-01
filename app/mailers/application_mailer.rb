class ApplicationMailer < ActionMailer::Base
  default to: 'info@artworks.com', from: 'info@artworks.com'
  layout 'mailer'
end
