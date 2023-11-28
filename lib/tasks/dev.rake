desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    Bookshelf.destroy_all
    Book.destroy_all
    User.destroy_all
  end

  # Create 10 users
  10.times do
    User.create!(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      public: true,
      role: 1
    )
  end

  p "Added #{User.count} users"


end
