# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(
    first_name: 'Iam',
    last_name: 'Admin',
    user_name: 'adminiam',
    email: 'admin@admin.com',
    password: 'password',
    user_type: 'coach',
    status: 'active',
    admin: true,
)
admin.save

player = User.new(
    first_name: 'Jill',
    last_name: 'Hill',
    user_name: 'hilljill',
    email: 'jillhill@gmail.com',
    password: 'password',
    user_type: 'player',
    status: 'active',
    admin: false,
)
player.save
