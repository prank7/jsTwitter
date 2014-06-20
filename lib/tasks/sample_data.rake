namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(name:     "Prashant",
                       email:    "prashant.abhishek7g@gmail.com",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
end

