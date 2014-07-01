require "spec_helper"

describe UserMailer do

  before(:each) do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
    @user = create_user
    UserMailer.new_prospect(@user).deliver
  end

  after(:each) do
    ActionMailer::Base.deliveries.clear
  end

  it 'should send an email, render the receiver email' do
    ActionMailer::Base.deliveries.count.should == 1
    ActionMailer::Base.deliveries.first.to.should == [@user.email]
    ActionMailer::Base.deliveries.first.subject.should == 'Thanks for your interest'
    ActionMailer::Base.deliveries.first.from.should == ['from@example.com']
  end
end
