task seed_pages: :environment do

  home = Cd2Cms::Page.create!(
      name: 'Home',
      body: 'This is the home page',
      in_menu: false,
      layout: 'home'
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
    in_menu: false,
  )

  enquiries.page_info.update({
      title: 'Enquiries | JC Services',
      url_alias: 'enquiries',
      published: true,
      protected: true})

end

