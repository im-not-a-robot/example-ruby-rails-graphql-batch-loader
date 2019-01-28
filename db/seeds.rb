# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Province.create!([{ country_id: '1', name: 'Bali' },
    { country_id: '1', name: 'DKI Jakarta'}])

City.create!([{ province_id: '1', name: 'Nusa Dua'},
    { province_id: '1', name: 'Badung'},
    { province_id: '1', name: 'Bangli'},
    { province_id: '1', name: 'Buleleng'},
    { province_id: '1', name: 'Denpasar'},
    { province_id: '2', name: 'Jakarta Barat'},
    { province_id: '2', name: 'Jakarta Pusat'},
    { province_id: '2', name: 'Jakarta Selatan'},
    { province_id: '2', name: 'Jakarta Timur'},
    { province_id: '2', name: 'Jakarta Utara'},
    { province_id: '2', name: 'Kepulauan Seribu'}])