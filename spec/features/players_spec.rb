require 'spec_helper'

feature 'Manage Prospects' do
  scenario 'a prospect (browser) can enter their information' do
    visit '/'
    click_on 'Learn More'

    fill_in 'user[first_name]', with: 'Jane'
    fill_in 'user[user_name]', with: 'Doe'
    fill_in 'user[player_attributes][aka]', with: 'JD'
    choose 'user_player_attributes_gender_female'
    choose 'user_player_attributes_jersey_size_m'
    choose 'user_player_attributes_shorts_size_m'

    click_button 'Create User'
    expect(page).to have_content 'Hi'
  end
end