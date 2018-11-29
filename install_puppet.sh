#!/bin/bash
echo "DistelliAccessToken: 'ED8Q968RYIZP06QQVVGE3DPUL'" > /etc/distelli.yml
echo "DistelliSecretKey: 'pzn3jvio93ycv3tq4fsdw5v0vidcu2oqm0e9p'" >> /etc/distelli.yml
echo "Environments:" >> /etc/distelli.yml
echo "  - Messenger-webhook" >> /etc/distelli.yml

wget -qO- https://pipelines.puppet.com/download/client | sh
/usr/local/bin/distelli agent install -conf /etc/distelli.yml
/usr/local/bin/distelli login -conf /etc/distelli.yml