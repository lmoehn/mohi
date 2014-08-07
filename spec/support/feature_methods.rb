module FeaturesMethods

  # def new_project(new_attributes = {})
  #   default_attributes = {
  #       :project_name => 'Murder Joffrey'
  #   }
  #
  #   attributes = default_attributes.merge(new_attributes)
  #
  #   visit '/'
  #   click_on 'View Projects'
  #   click_on 'Add New Project'
  #   fill_in 'Name of Project', with: attributes[:project_name]
  #   click_on 'Add Project'
  # end

  def login_in(email='user@example', password='password')
    visit login_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_on 'Submit'
  end

  def log_out(user)
    session.clear
  end
end
