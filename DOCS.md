# Home Assistant Community Add-on: Grafana

The analytics platform for all your metrics.

Grafana allows you to query, visualize, alert on and understand your metrics
no matter where they are stored. Create, explore, and share dashboards. Learn
about your Home Automation system using sexy and compelling graphs, and other
data visualizations.

Combine this add-on with the InfluxDB add-on to get insanely powerful
insights to your home.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Search for the "Grafana" add-on in the Supervisor add-on store.
1. Install the "Grafana" add-on.
1. Start the "Grafana" add-on.
1. Check the logs of the "Grafana" to see if everything went well.
1. Open the Web UI.

**Note**: As the addon now supports both Ingress and direct access, the default
`admin` user has a password of `hassio`.  __Please ensure to change this.__

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Configuration is read from an evcc standard configuration file. It is currently hard coded to be found at
`/config/evcc.yaml`
in your Home Assistant installation.

You can find documentation about the configuration format and sample configurations at [evcc](https://github.com/andig/evcc#configuration)

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Community Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

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
