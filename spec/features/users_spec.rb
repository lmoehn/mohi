require 'spec_helper'

feature 'Manage Users' do
  scenario 'a user can be added, edited and deleted' do
    visit '/'
    click_on 'List of Users'

    click_on 'Add New User'
    fill_in 'user[first_name]', with: 'Bob'
    fill_in 'user[last_name]', with: 'Smith'
    fill_in 'user[user_name]', with: 'smithb'
    fill_in 'user[email]', with: 'bobsmith@gmail.com'
    fill_in 'user[password]', with: 'password1'

    click_on 'Create User'
    click_on 'Bob Smith'
    click_on 'Edit'
    fill_in 'user[email]', with: 'justbob@gmail.com'

    click_on 'Update User'
    expect(page).to have_content 'justbob@gmail.com'
    expect(page).to_not have_content 'bobsmith@gmail.com'

    click_on 'Delete'
    expect(page).to_not have_content 'justbob@gmail.com'
  end
end