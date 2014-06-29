require 'spec_helper'

feature 'Manage Users' do

  before do
    DatabaseCleaner.clean
  end

  scenario 'a user can be added, edited and deleted' do
    visit '/'
    click_on 'List of Users'

    click_on 'Add New User'
    fill_in 'user[first_name]', with: 'Bob'
    fill_in 'user[last_name]', with: 'Smith'
    fill_in 'user[user_name]', with: 'smithb'
    fill_in 'user[email]', with: 'bobsmith@gmail.com'
    fill_in 'user[password]', with: 'password'
    select 'Parent', :from => 'User type'

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

  scenario 'a player can be added, edited and deleted' do
    visit '/'
    click_on 'List of Users'

    click_on 'Add New Player'
    fill_in 'user[first_name]', with: 'Jane'
    fill_in 'user[last_name]', with: 'Smith'
    fill_in 'user[user_name]', with: 'smithb'
    fill_in 'user[email]', with: 'janesmith@gmail.com'
    fill_in 'user[password]', with: 'password'
    select 'Player', :from => 'User type'

    click_on 'Create User'
    click_on 'Jane Smith'
    click_on 'Edit'
    fill_in 'user[email]', with: 'justjane@gmail.com'

    click_on 'Update User'
    expect(page).to have_content 'justjane@gmail.com'
    expect(page).to_not have_content 'janesmith@gmail.com'

    click_on 'Delete'
    expect(page).to_not have_content 'justjane@gmail.com'
  end

  scenario 'a user can login' do
    create_user
    visit root_url
    click_link 'Login'
    fill_in 'user_name', with: 'smiths'
    fill_in 'password', with: 'password1'
    click_button 'Login'
    expect(page).to have_content 'Logged in as: Sue Smith'
    click_on 'Logout'
    expect(page).to_not have_content 'Logged in as: Sue Smith'
  end
end
