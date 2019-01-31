This repo is a test case for reproducing the following Devise error when running with Falcon on HTTPS:

```
ActionController::InvalidAuthenticityToken in Devise::SessionsController#create
```

# Setup

- `bundle install`
- `bin/rails db:setup`

# Puma

- `bin/rails server`
- Visit http://localhost:3000
- Sign in with email `testcase@example.org` password `testcase`
- You should see "Hello, World!"

# Falcon

- `bundle exec falcon serve`
- Visit https://localhost:9292
- Sign in with email `testcase@example.org` password `testcase`
- You should see "Hello, World!"

To use a browser in the host when running Falcon in a guest VM, you'll need to
use the --bind option to specify the IP address instead of using localhost:

e.g. `bundle exec falcon serve --bind https://10.0.2.15:9292`
