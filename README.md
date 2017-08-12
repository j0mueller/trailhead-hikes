# Trailhead

![Build Status](https://codeship.com/projects/6c744cb0-5da2-0135-f5c3-72f62215251c/status?branch=master)
![Code Climate](https://codeclimate.com/github/j0mueller/trailhead-hikes.png)
![Coverage Status](https://coveralls.io/repos/j0mueller/trailhead-hikes/badge.png)

Trailhead is a site where hiking enthusiasts can browse through a list of trails or add their own, and then create wish lists and trip journals for their hikes. It is a primarily Ruby on Rails app with some React elements. It uses Devise for user authentication and CarrierWave for photo uploading. Future Features: searchable Google Map, social interaction among users that enables them to make their lists public and allow for the sharing of hiking experiences.


## Getting Started

1. Clone down the repo
2. Run
   2. `bundle install`
   2. `npm install`
   2. `rake db:create`
   2. `rake db:migrate`
3. If you'd like to seed the database with starter trails and users, run rake db:seed
4. Run `rails s`, and in a separate terminal window, run `npm start`. Then visit localhost:3000 in your browser.


## Prerequisites

* This app uses the [react-table](https://www.npmjs.com/package/react-table) library. Run `npm install react-table` and refer to their docs for additional set-up information.
* Devise for user authentication: the Devise gem is already included in the Gemfile. Refer to [Devise](https://github.com/plataformatec/devise#strong-parameters) docs for additional set-up usage information.
* CarrierWave for photo uploading: the CarrierWave gem is already included in the Gemfile. Refer to [CarrierWave](https://github.com/carrierwaveuploader/carrierwave#carrierwave) docs for additional set-up and usage information.


## Acknowledgments

Much gratitude to the EEs at Launch Academy for their help and support during this project and throughout the entire course that led up to it.
