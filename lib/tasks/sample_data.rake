namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Prashant A",
                 email: "prashant.abhishek7@gmail.com",
                 password: "qwerty",
                 password_confirmation: "qwerty")
    99.times do |n|
      name  = Faker::Name.name
      email = "prashant.abhishek7-#{n+1}@gmail.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end