require 'spec_helper'

feature 'manage pdf forms' do
  scenario 'fields get updated and displays a new form' do
    visit '/travel_forms/new'
    fill_in 'player_name', with: 'player Jane'
    fill_in 'parent_name', with: 'parent Doe'
    fill_in 'approve_date', with: 'June 14, 2014'

    click_on 'Approve'

    expect(find_field('player_name').value).to eq 'player Jane'
    expect(find_field('parent_name').value).to eq 'parent Doe'
    expect(find_field('approve_date').value).to eq 'June 14, 2014'
  end
end
