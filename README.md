# QBot

QBot allows people to create surveys and get audiences to respond to questions via email.

## Languages/framework
* Server side: Ruby on Rails
* Client side: Coffeescript

## Dependancies
* xcode
* Mac OS X
* Homebrew
* Github
* RVM
* Ruby >=1.9.3-p194
* Ruby on Rails >= 3.1+
* Git brew install git
* Postgres >= 9.1.3+ `brew install postgres`
* Redis >= 2.6.7 `brew install redis`
* node >= 0.8.4 `brew install node`
* phantomjs `brew install phantomjs`
* Heroku toolbelt

## Set up
* `cd qbot`
* RVM should ask you if you wish to trust the .rvmrc file - y then hit * return
* Install all the `gems bundle install`
* Create the Postgres database `rake create:db`
* Run the database migrations `rake db:migrate && rake db:test:prepare`
* Fire up the server `rails s`

## Tests

* Integration: `rake test:integrations`
* Records (data modeling): `rake test:records`
* Slow (above tests): `rake test:slow`

* Unit: `rake test:unit`
* Jasmine: `rake test:jasmine`

## Deployment
* `rake deploy:prepare`
* Let the tests run
* Follow the instructions