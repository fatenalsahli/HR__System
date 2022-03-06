# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

    def new_user_mailer
        user = User.new(name: "faten salman", email: "faten@gmail.com")

        UserMailer.with(user: user).welcome_email
    end

end
