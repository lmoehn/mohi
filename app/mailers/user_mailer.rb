class UserMailer < ActionMailer::Base
  default from: 'from@example.com'
  COACH_EMAIL = 'coach@coach.com'

  def new_prospect(user)
    @user = user
    mail to: @user.email, subject: 'Thanks for your interest'
  end

  def new_prospect_coach(user)
    @user = user
    mail to: COACH_EMAIL, subject: 'New Prospect'
  end
end
