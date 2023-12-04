desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    Book.destroy_all
    Bookshelf.destroy_all
    User.destroy_all
  end

  usernames = Array.new { Faker::Name.first_name }

  usernames << "alice"
  usernames << "bob"

  usernames.each do |username|
    User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username.downcase,
      public: [true, false].sample,
    )
  end

  # Create 10 users
  10.times do
    user = User.create!(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      public: [true, false].sample,
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
      rec: [true, false].sample,
      cover: Faker::LoremFlickr.image(size: "300x300", search_terms: ['book'])
    )
  end



  p "Added #{User.count} users"
  p "Added #{Bookshelf.count} bookshelves"
  p "Added #{Book.count} books"


end
