namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "s.a.moradi",
                         email: "s.a.moradi@ut.ac.ir",
                         password: "sdnsdn",
                         password_confirmation: "sdnsdn",
                         admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+301}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
