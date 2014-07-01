require 'spec_helper'

describe User do
  it 'creates a new user' do
    user = new_user
    expect(user).to be_valid
  end

  it 'is invalid when password is missing' do
    user = new_user(password: nil)
    user.save
    expect(user).to be_invalid
  end

  it 'creates an admin' do
    admin = new_admin
    expect(admin.admin).to eq true
  end
end
