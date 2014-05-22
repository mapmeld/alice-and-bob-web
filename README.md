## Alice and Bob CI

Concept: current testing platforms are not designed for cryptography / encryption / cryptocurrency.
Projects which need to work securely, consistently, and reliably with transparent, public testing take a
long time to test or fail for false reasons. A continuous integration platform with sufficient random
entropy, Tor pre-loaded GPG keys, Tor, and a copy of the Bitcoin blockchain could do a lot of good for
these projects.

Original idea post: https://medium.com/@mapmeld/3ae1584d56dc

Based on [https://github.com/freedomofpress/securedrop/issues/332 this issue], the first goal is to set up
Travis CI on a machine with enough random entropy to run SecureDrop's tests in five minutes or less. The
next goal would be to make this scalable for other projects, followed by installing other software and keys
for projects to use in testing.

## Install

The project is changed very little from Travis CI, but they don't post installation instructions, so it's
helpful to list them here.

    install nodejs, ruby, rvm
    bundle install
    PORT=80 bundle exec foreman start


## Running

Run the server with foreman:

    bundle exec foreman start

By default it uses the official API at `https://api.travis-ci.org`, but you
can customize the API server URL using:


    API_ENDPOINT="http://localhost:3000/" bundle exec foreman start

This will run against API run locally.

### Compiling assets manually

    bundle exec rakep
    ENV=production bundle exec rakep

### Running the spec suite

First, start the app (see above).

    bundle exec foreman start

To run the Ruby specs, run rspec against the spec/ directory:

    bundle exec rspec spec/

To run the Jasmine specs, open the spec page: [localhost:5000/spec.html](http://localhost:5000/spec.html)

### i18n

Localization for travis-web is managed via [localeapp](http://localeapp.com).
If you are interested in improving the existing localizations or adding
a new locale, please contact us on irc (#travis) and we will set you up.

Please do **not** edit the YAML files directly.

Localization data can be synced with the following rake task:

    bundle exec localeapp:update

This will publish any new keys in en.yml, as well as any missing keys
from your handlebars templates and pull down the latest localizations.

*note*: You will need to have the localeapp api key exported to
LOCALEAPP_API_KEY
