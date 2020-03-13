# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.delete_all
Page.delete_all
User.delete_all


User.create(
    email: "email@fakeemail.com",
    password: "123",
    admin?: true,
    name: "Renata",
    
)

Page.create(
    website_name: "May Miriuk",
    logo:"https://static.wixstatic.com/media/aafbd6_5d8f75934bf34a46a0fec97368c74b18~mv2.png/v1/fill/w_66,h_54,al_c,q_85,usm_0.66_1.00_0.01/Prancheta%20160px.webp",
    nav_link_1: "About Me",
    nav_link_2: "Projects",
    filter_1: "Graphic",
    filter_2: "UI",
    filter_3: "Logo",
    footer_link_1: "#",
    footer_link_2: "#",
    footer_link_3: "#",
    user_id: User.all.first.id
)

Project.create(
    title: "Logo C.O.",
    index_description: "logo done for company",
    description: "logo I did for company X with elemes X Y",
    description: "Logo",
    user_id: User.all.first.id
)
Project.create(
    title: "Graphic C.O.",
    index_description: "Graphic done for company",
    description: "Graphic I did for company X with elemes X Y",
    description: "Graphic",
    user_id: User.all.first.id
)
Project.create(
    title: "UI C.O.",
    index_description: "UI done for company",
    description: "UI I did for company X with elemes X Y",
    description: "UI",
    user_id: User.all.first.id
)