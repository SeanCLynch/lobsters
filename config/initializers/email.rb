ActionMailer::Base.smtp_settings = {
  :address => ENV.fetch("MAILGUN_SMTP_SERVER", "127.0.0.1"),
  :port => Integer(ENV.fetch("MAILGUN_SMTP_PORT", 25)),
  :domain => Rails.application.domain,
  :enable_starttls_auto => (ENV["SMTP_STARTTLS_AUTO"] == "true"),
  :user_name => ENV.fetch("MAILGUN_SMTP_LOGIN", ""),
  :password => ENV.fetch("MAILGUN_SMTP_PASSWORD", ""),
}
