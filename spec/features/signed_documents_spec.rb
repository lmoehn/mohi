require 'spec_helper'

feature 'manage signed documents' do
  scenario 'add signed document information' do
    visit '/'
    click_on 'List of Signed Documents'
    click_on 'Add New Signed Document'
    fill_in 'signed_document_player_name', with: 'Player Doe'
    fill_in 'signed_document_parent_name', with: 'Parent Doe'
    fill_in 'signed_document_approved_on', with: '05/06/2008'
    quietly do
      click_on 'Approve'
    end
    expect(page).to have_no_content 'Approve'
    expect(page).to have_content 'Player Doe'
    expect(page).to have_content 'Parent Doe'
    expect(page).to have_content 'May 6, 2008'
  end
end