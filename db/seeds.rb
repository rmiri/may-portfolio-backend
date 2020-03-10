# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Style.delete_all
User.delete_all


User.create(
    email: "email@fakeemail.com",
    password: "123",
    admin?: true,
    name: "Renata",
    avatar: "https://upload.wikimedia.org/wikipedia/commons/4/49/Syvia_of_Sylvia%27s_reaturant_N.Y.C_%28cropped%29.jpg"
)

Style.create(
    user_id: User.all.first.id, 
    background_color: "red", 
    block_height: nil, 
    name_color: nil, 
    name_style: nil, 
    name_size: nil, 
    text_color: nil, 
    text_style: nil, 
    text_size: nil
)