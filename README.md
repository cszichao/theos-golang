# theos-golang
Build a [theos](https://github.com/theos/theos) command line tool using golang on a jail-broken iOS device.

## Getting Started

### Prerequisites

This project needs a macOS environment with [Xcode](https://developer.apple.com/xcode/) installed.

[Homebrew](https://brew.sh/) is also strongly recommended to manage the prerequisite.

#### THEOS

Follow the steps of THEOS [Installation](https://github.com/theos/theos/wiki/Installation). You can also flow this quick start steps:

1. `mkdir ~/theos`
1. `echo "export THEOS=~/theos" >> ~/.bash_profile`
1. `source ~/.bash_profile`
1.  `git clone --recursive https://github.com/theos/theos.git $THEOS`
1. `brew install ldid`
1. `sudo cpan IO::Compress::Lzma`

#### golang
Install [golang](https://golang.org/) to cross build the go source to static lib.

`brew install golang`

#### dpkg
[dpkg](https://en.wikipedia.org/wiki/Dpkg) is used to extract the executable file from the final .deb package.

`brew install dpkg`

## Building
