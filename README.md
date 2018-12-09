## vzlogger docker image

this image is raspberry pi image 

for intel show [here...](https://hub.docker.com/r/treban/smartmeter-vzlogger/)

### Pull the image

docker pull treban/smartmeter-vzlogger

### Run the container

The container needs a mounted volume in /cfg.
In this folder must be placed the vzlogger.conf

You can also passthrough the usb device with the data logger hardware connected. 

docker run -i -t -v /path-to-data-on-host:/cfg --device=/dev/ttyUSB0 treban/smartmeter-vzlogger-rpi

