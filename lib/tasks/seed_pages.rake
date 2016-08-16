task seed_pages: :environment do

  home = Cd2Cms::Page.create!(
      name: 'Home',
      body: 'This is the home page',
      layout: 'home',
      in_menu: true,
      menu_item: 'Home'
  )

  home.page_info.update({
      title: 'JC Services',
      url_alias: 'home',
      home_page: true,
      published: true,
      protected: true})


  enquiries = Cd2Cms::Page.create!(
    name: 'Enquiries',
    body: Faker::Hipster.paragraph(2),
    in_menu: true,
    menu_item: 'Contact Us'
  )
  enquiries.page_info.update({
      title: 'Enquiries | JC Services',
      url_alias: 'contact',
      published: false,
      protected: true})

  enquiries_thanks = Cd2Cms::Page.create!(
    name: 'Enquiries Thanks',
    body: '<h1>Thank You</h1><p>Thank you for getting in touch, will be with you shortly.</p>',
    in_menu: false
  )
  enquiries_thanks.page_info.update({
      title: 'Enquiries | JC Services',
      url_alias: 'thanks',
      published: false,
      protected: true})


end

