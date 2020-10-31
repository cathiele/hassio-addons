<div align="center">
<img src="https://github.com/andig/evcc/blob/master/docs/logo.png" width="400" />
</div>

# Home Assistant Community Add-on: [evcc](https://github.com/andig/evcc)

[![Build Status](https://travis-ci.org/andig/evcc.svg?branch=master)](https://travis-ci.org/andig/evcc)
[![Code Quality](https://goreportcard.com/badge/github.com/andig/evcc)](https://goreportcard.com/report/github.com/andig/evcc)
[![Latest Version](https://img.shields.io/github/tag/andig/evcc.svg)](https://github.com/andig/evcc/releases)
[![Pulls from Docker Hub](https://img.shields.io/docker/pulls/andig/evcc.svg)](https://hub.docker.com/r/andig/evcc)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=48YVXXA7BDNC2)


EVCC is an extensible EV Charge Controller with PV integration implemented in Go.

## Features

- simple and clean user interface
- multiple [chargers](https://github.com/andig/evcc#charger): Wallbe, Phoenix (includes ESL Walli), go-eCharger, NRGkick (direct Bluetooth or via Connect device), SimpleEVSE, EVSEWifi, KEBA/BMW, openWB, Mobile Charger Connect, and any other charger using scripting
- multiple [meters](https://github.com/andig/evcc#meter): ModBus (Eastron SDM, MPM3PM, SBC ALE3 and many more), Discovergy (using HTTP plugin), SMA Home Manager 2.0 and SMA Energy Meter, KOSTAL Smart Energy Meter (KSEM, EMxx), any Sunspec-compatible inverter or home battery devices (Fronius, SMA, SolarEdge, KOSTAL, STECA, E3DC), Tesla PowerWall
- wide support of vendor-specific [vehicles](#vehicle) interfaces (remote charge, battery and preconditioning status): Audi, BMW, Ford, Tesla, Nissan, Renault, Porsche, Volkswagen and any other vehicle using scripting
- [plugins](https://github.com/andig/evcc##plugins) for integrating with hardware devices and home automation: Modbus (meters and grid inverters), MQTT and shell scripts
- status notifications using [Telegram](https://telegram.org) and [PushOver](https://pushover.net)
- logging using [InfluxDB](https://www.influxdata.com) and [Grafana](https://grafana.com/grafana/)
- soft ramp-up/ramp-down of charge current ensures contactor only switched at minimum current
- electric contactor protection
- REST API

## Authors & contributors

The original setup of this repository is by [cathiele](https://github.com/cathiele/hassio-addons).

The great evcc project is maintained by [andig](https://github.com/andig/evcc)

Contributions by [Tscherno](https://github.com/Tscherno)

## License

MIT License

Copyright (c) 2020 [cathiele](https://github.com/cathiele/hassio-addons)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
