require 'spec_helper'

feature 'PdfTemplates' do
  scenario 'can edit and delete templates' do
    create_pdf_template
    visit root_path

    click_on 'Show Templates'
    click_on 'BVSD Travel'
    click_on 'Edit'
    fill_in 'Version', with: '02'
    fill_in 'Year', with: 2015

    click_on 'Update'

    expect(page).to_not have_content '2014'
    expect(page).to have_content '2015'

    click_on 'BVSD Travel'
    click_on 'Delete'

    expect(page).to_not have_content 'BVSD Travel'
  end
end
