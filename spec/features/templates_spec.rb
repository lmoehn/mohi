require 'spec_helper'

feature 'Templates' do
  scenario 'can add templates' do
    visit root_path

    click_on 'Show Templates'
    click_on 'Create a Template'

    fill_in 'Name', with: 'Travel Form'
    fill_in 'Version', with: '01'
    fill_in 'Year', with: 2014
    fill_in 'New partial', with: 'new_partial'
    fill_in 'Show partial', with: 'show_partial'

    click_on 'Create Template'
    click_on 'Travel Form'
    click_on 'Edit'

    fill_in 'Name', with: 'Medical Form'
    click_on 'Update'

    expect(page).to_not have_content 'Travel Form'

    click_on 'Medical Form'
    click_on 'Delete'

    expect(page).to_not have_content 'Medical Form'
  end
end
