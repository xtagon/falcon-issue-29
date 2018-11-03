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

- `falcon serve`
- Visit https://localhost:9292
- Sign in with email `testcase@example.org` password `testcase`
- You should see "Hello, World!"
