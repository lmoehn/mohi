module ObjectCreationMethods

  def new_admin(attributes = {})
    defaults = {
        first_name: 'Iam',
        last_name: 'Admin',
        user_name: 'admin',
        email: 'admin@example.com',
        password: 'password',
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

  def new_player(attributes = {})
    defaults = {
        first_name: 'Jane',
        last_name: 'Player',
        user_name: 'janeplayer',
        email: 'janeplayer@gmail.com',
        password: 'password',
        user_type: 'player',
        status: 'active',
        phone1: '303-555-5555',
        phone1_type: 'cell',
    }
    user = User.new(defaults.merge(attributes))
    user.build_player(aka: 'jj', gender: 'female')
    user
  end

  def create_player(attributes = {})
    user = new_player(attributes)
    user.save!
    user
  end

  def new_parent(attributes = {})
    defaults = {
        first_name: 'Jill',
        last_name: 'Parent',
        user_name: 'jillparent',
        email: 'jillparent@gmail.com',
        password: 'password',
        user_type: 'parent',
        status: 'active',
        phone1: '303-555-5555',
        phone1_type: 'cell',
    }
    user = User.new(defaults.merge(attributes))
  end

  def create_parent(attributes = {})
    user = new_parent(attributes)
    user.save!
    user
  end

  def new_pdf_template(attributes = {})
    defaults = {
        name: 'BVSD Travel',
        version: '01',
        year: 2014,
        new_partial: 'bvsd_travel',
        show_partial: 'bvsd_travel',
        active: true,
    }
    template = PdfTemplate.new(defaults.merge(attributes))
  end

  def create_pdf_template(attributes = {})
    template = new_pdf_template(attributes)
    template.save!
    template
  end
end
