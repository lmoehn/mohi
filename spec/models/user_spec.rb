require 'spec_helper'

describe User do
  it 'creates a new user' do
    user = new_user
    expect(user).to be_valid
  end

  it 'creates an admin' do
    admin = new_admin
    expect(admin.admin).to eq true
  end
end
