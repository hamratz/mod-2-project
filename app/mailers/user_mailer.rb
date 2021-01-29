class UserMailer < ApplicationMailer
    # default from: 'notifications@example.com'
    default from: 'order_confirmation@craver.com'

  def confirmation_email
    @user = params[:user_id]
    # @user = sessions[:user_id]
    mail(to: @user.email, subject: 'Your Crave is on the way!!')
  end
end
