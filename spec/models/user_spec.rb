require 'spec_helper'

describe User do
  it 'creates a new player user' do
    player = new_player
    expect(player).to be_valid
  end

  it 'is invalid when password is missing' do
    player = new_player(password: nil)
    player.save
    expect(player).to be_invalid
  end

  it 'creates an admin' do
    admin = new_admin
    expect(admin.admin).to eq true
  end
end
