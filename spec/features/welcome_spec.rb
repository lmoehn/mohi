require 'spec_helper'

feature 'show homepage' do
  scenario 'homepage has a navbar' do
    visit '/'
    within 'body' do
      expect(page).to have_content 'Hi'
    end
  end
end