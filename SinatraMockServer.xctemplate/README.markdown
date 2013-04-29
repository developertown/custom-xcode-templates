## Sinatra Test Server structure

### Initial Setup

This directory structure will give you a working sinatra app that can be run three different ways:

1.	via ruby server.rb
2.	via RestKit gems bundle exec rake server:start
3.	by initializing git and pushing to heroku (pre-requisite is heroku toolbelt installation)

In Terminal navigate to the test_server directory in your project and issue the following commands:

```bash

bundle

# start via rake
bundle exec rake server:start

#setup heroku
git init

git add .

git commit -m "creating mock server for app."

heroku create

#save url for heroku app in order to add it to your iOS application.

git push -u heroku master
```

### Integrating fixtures with unit tests

I like to keep all of my json fixture files in one place.  If you have a unit test bundle you can select your fixtures in xcode and add them to the bundle in the Utility > File Inspector ⌥⌘1 pane.  Then you can consume them directly in your unit tests following the [RestKit unit testing guide](https://github.com/RestKit/RestKit/wiki/Unit-Testing-with-RestKit).

### Extending mock server application

It's just a sinatra app, you can find examples at the [Sinatra site](http://www.sinatrarb.com/intro.html) and in the [RestKit unit testing guide](https://github.com/RestKit/RestKit/wiki/Unit-Testing-with-RestKit) under "Leveraging Sinatra as a Test Server"