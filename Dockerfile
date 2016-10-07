FROM resin/raspberrypi-buildpack-deps

RUN apt-get update && \
    apt-get install usbutils wvdial ppp usb-modeswitch

ADD start3g /usr/local/bin/start3g

CMD ["/usr/local/bin/start3g"]
