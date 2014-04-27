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
<<<<<<< HEAD:lib/tasks/populate.rake
      email = "example-#{n+301}@railstutorial.org"
=======
      email = "example-#{n+400}@railstutorial.org"
>>>>>>> 68dbae9f40ca5e497c3315b936bb328fabd3ac9e:lib/tasks/sample_data.rake
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end