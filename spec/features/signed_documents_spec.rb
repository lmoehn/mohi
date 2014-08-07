require 'spec_helper'

feature 'manage signed documents' do
  scenario 'add a signed BVSD Travel Form, display it, view and print a pdf' do
    create_player
    create_pdf_template

    visit '/'
    click_on 'List of Signed Documents'
    click_on 'BVSD Travel'
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
    click_on 'Home'
    click_on 'List of Signed Documents'

    expect(page).to have_content 'Created on: '
  end

end
