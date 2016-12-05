# User Directory

Basic Rails app for testing Solr.

## Setup

### EY Cloud Environment

1. Prepare config/secrets.yml.
1. Make sure to run DB migrations.
1. Setup Solar:

Generate sunspot.yml and move to shared folder:

```
cd /data/appname/current
bundle exec rails generate sunspot_rails:install
mv config/sunspot.yml /data/appname/shared/config/
```

Deploy to generate symlink to shared/config/sunspot.yml.

Use custom chef recipe for Solr installation.

4. Load seed data:

```
cd /data/appname/current
bundle exec rake db:seed
```

### Development Environment

### Java:

Running Solr on your local machine requires Java 7 or higher. On OS X:

```
# Install Java with Brew:
$ brew cask install java

# Check Java version:
$ java -verson
java version "1.8.0_102"
Java(TM) SE Runtime Environment (build 1.8.0_102-b14)
```

### Running Solr:

The gem `sunspot_solr` should have been installed during `bundle install`.

To run Solr:

```
bundle exec rake sunspot:solr:start # or sunspot:solr:run to start in foreground
```

## Features

The app is just a simple User CRUD with a User Search feature using Solr in the homepage.

## System Dependencies

* Rails 4.2
* Ruby 2.2.3
* Java 7 or higher
* Sunspot 2.2

See Gemfile for more details.

## License

Released under the [MIT License][1].

[1]: https://github.com/mikong/user_directory/blob/master/LICENSE
