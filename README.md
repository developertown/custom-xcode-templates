#custom-xcode-templates

## Pre reqs

1.	homebrew
2.	rvm


## Installation

Link any desired template into ~/Library/Developer/Xcode/Templates/Project Templates/Application

Example:

	mkdir -p "~/Library/Developer/Xcode/Templates/Project Templates/Application"
	ln -s `pwd`/DeveloperTowniOS.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/Application/DeveloperTowniOS.xctemplate
	ln -s `pwd`/SinatraMockServer.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/Application/SinatraMockServer.xctemplate

## DeveloperTowniOS.xctemplate ("DT Single View" in XCode)

Based off of the single view template.  Adds the option to include the TestFlightSDK (and adds in appropriate boilerplate code to wire it up).

Includes the following non-standarf files:
*	.gitignore
*	.rvmrc (using ruby 1.9.3 default gemset)
*	Gemfile (specifies cocoapods)
*	Podfile (specifies MCREnumerable, TestFlightSDK and OCMock if unit tests are included)

After creating the project, close it in XCode and then open it's directory in Terminal, run the following commands:

	bundle
	pod install

## SinatraMockServer.xctemplate

Non-concrete template that is used by DT Single View to put a test_sever dirrctory at the project root. test_server
is a complete sinatra app configured to run with thin (if you want) and ready to be git'd up and pushed to heroku.
this allows you to setup an iphone project with a mock api without being constrained by a dependency on a forth coming api.

See SinatraMockServer.xctemplate/README.markdown for more details on how to configure, install and deploy.