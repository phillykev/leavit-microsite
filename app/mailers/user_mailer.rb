class UserMailer < ActionMailer::Base
  default from: "Leavit <hello@leav.it>"

  def signup_email(user)
    @user = user
    @twitter_message = "No more \"sorry we missed you!\" So excited to have packages delivered safely @justleavit"

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
