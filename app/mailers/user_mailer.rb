class UserMailer < ActionMailer::Base
  default from: "Leavit <hello@leav.it>"

  def signup_email(user)
    @user = user
    @twitter_message = "So excited to have packages delivered safely to my house @justleavit"

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
