ActionMailer::Base.smtp_settings = {
  :address => ENV["MAILGUN_SMTP_SERVER"],
  :port => Integer(ENV["MAILGUN_SMTP_PORT"]),
  :domain => Rails.application.domain,
  :enable_starttls_auto => (ENV["SMTP_STARTTLS_AUTO"] == "true"),
  :user_name => ENV["MAILGUN_SMTP_LOGIN"],
  :password => ENV["MAILGUN_SMTP_PASSWORD"],
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
