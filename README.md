#custom-xcode-templates

## Installation

Link any desired template into ~/Library/Developer/Xcode/Templates/Project Templates/Application

Example:
	mkdir -p "~/Library/Developer/Xcode/Templates/Project Templates/Application"
	
	ln -s `pwd`/DeveloperTowniOS.xctemplate" ~/Library/Developer/Xcode/Templates/Project\ Templates/Application/DeveloperTowniOS.xctemplate

## DeveloperTowniOS.xctemplate ("DT Single View" in XCode)

Based off of the single view template.  Adds the option to include the TestFlightSDK (and adds in appropriate boilerplate code to wire it up).

Includes the following non-standarf files:
*	.gitignore
*	.rvmrc (using ruby 1.9.3 default gemset)
*	Gemfile (specifies cocoapods)
*	Podfile (specifies MCREnumerable, TestFlightSDK and OCMock if unit tests are included)

After creating the project, close it in XCode and then open it's directory in Terminal, run the following commands:
1.		bundle
2.		pod install
