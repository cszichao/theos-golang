# theos-golang
Build a [theos](https://github.com/theos/theos) command line tool using golang on a jail-broken iOS device.

## Getting Started

### Prerequisites

This project needs a macOS environment with [Xcode](https://developer.apple.com/xcode/) installed.

[Homebrew](https://brew.sh/) is also strongly recommended to manage the installed packages.

#### THEOS

Follow the steps of THEOS [Installation](https://github.com/theos/theos/wiki/Installation). You can also follow this quick start steps blow:

1. `mkdir ~/theos`
1. `echo "export THEOS=~/theos" >> ~/.bash_profile`
1. `source ~/.bash_profile`
1.  `git clone --recursive https://github.com/theos/theos.git $THEOS`
1. `brew install ldid`
1. `sudo cpan IO::Compress::Lzma`

#### golang
Install [golang](https://golang.org/) to cross build the go source to static lib.

1. `brew install golang`
1. setup the corresponding `GOROOT` and `GOPATH` environment variable

#### dpkg
[dpkg](https://en.wikipedia.org/wiki/Dpkg) is used to extract the executable file from the final .deb package.

`brew install dpkg`

### Building

1. `git clone https://github.com/cszichao/theos-golang`
1. `cd theos-golang && bash ./build.sh`
1. now you get the iOS jail-broken executable file `/bin/cmd`

## How It Works

1. cross build main.go on `GOOS=darwin GOARCH=arm GOARM=7` and `GOOS=darwin GOARCH=arm64` to get a static library on armv7 and arm64 respectively
1. join the lib of arm64 and armv7 library together into a universal lib using  `lipo`
1. link the static lib into a THEOS command line tool project and build it into a .deb package
1. extract the executable file from the .deb package to `./bin/cmd`
