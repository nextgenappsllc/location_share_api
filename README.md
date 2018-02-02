# README

Development project providing the api for "https://github.com/nextgenappsllc/LocationShare"


## Setup

`git clone https://github.com/nextgenappsllc/location_share_api.git`

`cd location_share_api`

`bundle install`

Set your `MYSQL_USER` and `MYSQL_PW` in "config/application.yml".

`bundle exec rake db:create`

`bundle exec rake db:schema:load`

Then start your rails server!


## Pending
* Tests!

* Move code for channel broadcast to async job with service

* Authentication/Security

