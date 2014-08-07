# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
PdfTemplate.delete_all

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
    first_name: 'Jane',
    last_name: 'Player',
    user_name: 'janeplayer',
    email: 'janeplayer@gmail.com',
    password: 'password',
    user_type: 'player',
    status: 'active',
    admin: false,
)
player.save

parent = User.new(
    first_name: 'Jill',
    last_name: 'Parent',
    user_name: 'jillparent',
    email: 'jillparent@gmail.com',
    password: 'password',
    user_type: 'parent',
    status: 'active',
    admin: false,
)
parent.save

pdf_bvsd_travel = PdfTemplate.new(
    name: 'BVSD Travel',
    new_partial: 'bvsd_travel',
    show_partial: 'bvsd_travel',
    active: true,
)
pdf_bvsd_travel.save

pdf_usau_medical = PdfTemplate.new(
    name: 'USAU Medical',
    new_partial: 'usau_medical',
    show_partial: 'usau_medical',
    active: true,
)
pdf_usau_medical.save