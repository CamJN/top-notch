# top-notch

`top-notch` is a command line utility for macOS 12+ to indicate if the mac it is run on has a notched screen attached.

## Debug Usage
Clone this repo and run: `swift run`

## Production Usage
To install and use `top-notch` manually you can follow these steps:
```
make build
sudo make install
top-notch
case $? in
    0) echo "An attached screen has a notch!";;
    1) echo "No attached screen has a notch!";;
    2) echo "No screen attached!";;
esac
```
If you want to change the prefix that `top-notch` will be installed to, you can override `PREFIX` when running `make install` like this: `make PREFIX=/opt/homebrew install`, the default is `/usr/local`.

## System Requirements

macOS is required as this tool uses a macOS specific API. macOS [12](https://developer.apple.com/documentation/appkit/nsscreen/safeareainsets) or later is required, as that is when the API was added.
