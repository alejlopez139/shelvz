# Book Collection Website

This is a web application that allows users to manage and share their book collections. 

## Features

- **Book Listing**: Users can list all the books in their collection, providing details such as the author, genre, and publication year.
- **User Following**: Users have the ability to create accounts, allowing them to keep up-to-date with their latest book additions.
- **Book Groups**: Users can create groups for their books, such as "Wishlist", "Currently Reading", or "Favorites". This helps in better organization and categorization of their collection.

## Pain Point

 I love reading, I might have too many books. I can't keep track of all the books I have right now and I need help.

 I have wishlists across a bunch of different websites. It's a pain to keep track of them all.

 ## Solution

 We can keep track of our books digitally by searching for them using the OpenLibrary API.

 I can create different bookshelves and even create a bookshelf for my "wishlist".

## Getting Started


### Prerequisites

 * Ruby 3.2.2
 * Rails 7.1.2

### Running Locally

 Fork this repo, then ```bundle install```

 Run ```rake sample_data``` to get a sample of user profiles with bookshelves and some randomly generated books.
 
 Run ```bin/dev``` to start you development enviroment and server
 
 You can check the rake file if you want to use a test profile, or you can just sign up and create a profile for yourself

## Running the tests

Explain how to run the automated tests for this system.

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - The web framework used
* [PostgreSQL](https://www.postgresql.org/) - Database Management
* [OpenLibrary API](https://openlibrary.org/developers/api) - API that handles the requests

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Alejandro Lopez** - *Initial work* - [Alejandro Lopez](https://github.com/alejlopez139)

See also the list of [contributors](https://github.com/your/repository/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Thank you to OpenLibrary for creating an eaasy to use API with a wealth of knowledge
* Discovery Partners Institute for allowing me to take part in their Sortware Development Apprenticeship where I started this project.
