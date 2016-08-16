task reset_all: :environment do
  
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['seed'].invoke

end

task seed: :environment do
  
  Rake::Task['db:migrate'].invoke
  Rake::Task['cms:install'].invoke

  Rake::Task['seed_pages'].invoke

  Cd2Cms::Setting.new_setting :email, 'george@jcservicesltd.com'
  Cd2Cms::Setting.new_setting :phone_number, '01379 740 751'
  Cd2Cms::Setting.new_setting :logo, File.open(Rails.root + 'seeds/logo.png'), type: :image


end
