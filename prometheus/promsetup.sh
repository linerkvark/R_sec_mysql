#!/bin/bash


wget https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz
mkdir /etc/prometheus
mkdir /var/lib/prometheus
tar -xvf prometheus-2.33.3.linux-amd64.tar.gz
cd prometheus-2.33.3.linux-amd64
cp prometheus promtool /usr/local/bin/
cp -r console_libraries consoles prometheus.yml /etc/prometheus
useradd --no-create-home --shell /bin/false prometheus
chown -R prometheus:prometheus /etc/prometheus /var/lib/prometheus
chown prometheus:prometheus /usr/local/bin/{prometheus,promtool}
cd ..
cp prometheus.service /etc/systemd/system/prometheus.service
systemctl daemon-reload
systemctl enable prometheus
systemctl start prometheus
