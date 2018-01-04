### What am I looking at?

This repo is a fork from [edubart/otclient](https://github.com/edubart/otclient) where I added also a fork of [otland/forgottenserver (TFS 1.X+)](https://github.com/otland/forgottenserver). Actually I joined both repositories. The idea is to study and chenge some simple things to make tests in a project (it's named COTS, soon I'll put a link here).

I'm currently testing a lot of things, and finding better ways to run and complile both fro Windows, so I do not recommend cloning this for anything but develop COTS.

## Donwloads:

### [Boost](https://mega.nz/#!0NRwjbpJ!jyndUNuwkfmrL7cT0Y3GmoCw7smHJNhfjr2W8VfoVj4). Coloque na pasta `otclient-sdk\boost_1_63_0`(verifique o arquivo BoostInfo)
### [Dl - 1090,1096,1097,1098](https://mega.nz/#!AFIknZqI!n3_7DFChwRg9QNMYsmMRwDDWRmPwS1HOztfB0dE55rU)

## Editions:

### OTClient:
##### I moved the settings.props (which relied on a System Variable) to be part of `otclient\vc14\otclient.vcxproj`.
##### Removed the criptography from any communications, since we'll be working on it later.

### TFS:
##### The same was done to TFS (more soon).