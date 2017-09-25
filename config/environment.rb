# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => 'smtp.gmail.com',
  :user_name => "tutors.test7@gmail.com", #gmailアドレス
  :password => "", #gmailパスワード
  :authentication => 'login',
}