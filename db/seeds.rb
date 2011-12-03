require 'active_record/fixtures'

puts "Loading regular seeds"
Dir[Rails.root.join("db/seed", "*.{yml,csv}")].each do |file|
  ActiveRecord::Fixtures.create_fixtures("db/seed", File.basename(file, '.*'))
end

puts "Loading #{Rails.env} seeds"
Dir[Rails.root.join("db/seed", Rails.env, "*.{yml,csv}")].each do |file|
  ActiveRecord::Fixtures.create_fixtures("db/seed/#{Rails.env}", File.basename(file, '.*'))
end