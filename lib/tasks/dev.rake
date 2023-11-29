desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    Book.destroy_all
    Bookshelf.destroy_all
    User.destroy_all
  end

  # Create 10 users
  10.times do
    user = User.create!(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      public: true,
      role: 1
    )
    Bookshelf.create!(
        public: true,
        owner: user,
        name: Faker::Superhero.name
      )
  end

  users = User.all
  10.times do
    Bookshelf.create!(
      public: [true, false].sample,
      owner: users.sample,
      name: Faker::Superhero.name
    )
  end

  bookshelves = Bookshelf.all
  100.times do
    Book.create!(
      title: Faker::Book.title,
      author: Faker::Book.author,
      bookshelf: bookshelves.sample,
      notes: Faker::Lorem.paragraph(sentence_count: 2),
      public: [true, false].sample,
      fav: [true, false].sample,
      rec: [true, false].sample
    )
  end



  p "Added #{User.count} users"
  p "Added #{Bookshelf.count} bookshelves"
  p "Added #{Book.count} books"


end
