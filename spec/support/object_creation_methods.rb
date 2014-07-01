module ObjectCreationMethods

  def new_admin(attributes = {})
    defaults = {
        first_name: 'Iam',
        last_name: 'Admin',
        user_name: 'admin',
        email: 'admin@admin.com',
        password: 'password1',
        user_type: 'coach',
        admin: true,
    }
    User.new(defaults.merge(attributes))
  end

  def create_admin(attributes = {})
    admin = new_admin(attributes)
    admin.save!
    admin
  end

  def new_user(attributes = {})
    defaults = {
        first_name: 'Sue',
        last_name: 'Smith',
        user_name: 'smiths',
        email: 'suesmith@gmail.com',
        password: 'password1',
        user_type: 'player',
        group: 'smith',
        status: 'active',
        phone1: '303-555-5555',
        phone1_type: 'cell',
    }
    user = User.new(defaults.merge(attributes))
    user.build_player(aka: 'jj', gender: 'female')
    user
  end

  def create_user(attributes = {})
    user = new_user(attributes)
    user.save!
    user
  end
end
