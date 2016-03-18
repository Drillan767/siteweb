ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "josephlevarato.fr",
    :user_name => "jd.levarato@gmail.com",
    :password => '2R@thianHR6',
    :authentication => :login,
    :enable_starttls_auto => true
}