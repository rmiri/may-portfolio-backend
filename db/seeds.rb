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
    password: "safepassword",
    admin?: true,
    name: "Renata",
    
)

Page.create(
    website_name: "May Miriuk",
    logo:"https://static.wixstatic.com/media/aafbd6_5d8f75934bf34a46a0fec97368c74b18~mv2.png/v1/fill/w_66,h_54,al_c,q_85,usm_0.66_1.00_0.01/Prancheta%20160px.webp",
    nav_link_1: "May Miriuk",
    nav_link_2: "Projects",
    filter_1: "Editorial",
    filter_2: "Website",
    filter_3: "Identity",
    footer_link_1: "maymiriuk@gmail.com",
    footer_link_2: "https://www.linkedin.com/in/mayaramiriuk/",
    footer_link_3: "https://dribbble.com/MayMiriuk",
    user_id: User.all.first.id
)


may = AboutMe.create(
    name: "Mayara Miriuk",
    profile_photo: "https://res.cloudinary.com/mirir/image/upload/v1585144709/IMG_20190818_152736_h3kdqq.png",
    about_me: "l’m May Miriuk - a UI and graphic designer based in London with experience in branding, editorial, print and digital. I worked for 6 years with Estúdio Claraboia, a small but rising design studio in São Paulo, Brazil, where I had the opportunity to experience a great variety of briefings and clients.Adobe XD, lnDesign, lllustrator, Photoshop, Acrobat MacOS & Windows, Wacom pen tablet Languages: Portuguese (Native), English (Fluent)",
    phone: "0770770770",
    email: "maymiriuk@gmail.com",
    user_id: User.all.first.id
)
