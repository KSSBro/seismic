# Seismic

A Flutter app that displays seismic data from around the world. The live data - magnitude, location and exact coordinates of the earthquake, is sourced from the USGS public earthquake API. 

<a><img alt="MIT License" src="https://img.shields.io/apm/l/atomic-design-ui.svg?"></a>
<a href="http://makeapullrequest.com">
  <img alt="PRs Welcome"src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat">
</a>

## Screenshots

![Screenshot 1](https://raw.githubusercontent.com/Araekiel/seismic/master/resources/images/screenshot_1.jpg) ![Screenshot 2](https://raw.githubusercontent.com/Araekiel/seismic/master/resources/images/screenshot_2.jpg)

## Getting Started 

### Prerequisites

You need to install the *[Flutter](https://dart.dev/)* SDK to run this project.
Head over to *[Install - Flutter: flutter.dev](https://flutter.dev/docs/get-started/install)* to install the sdk.<br>
The *[Dart](https://dart.dev/)* SDK comes packaged along with Flutter.<br>
You'll also need an android or ios device or an emulator to run the project.

### Documentation detailing the emulator/device setup:
#### Windows: 
- *[Android setup](https://flutter.dev/docs/get-started/install/windows#android-setup)*
#### MacOS: 
- *[Deploy to iOS devices](https://flutter.dev/docs/get-started/install/macos#deploy-to-ios-devices)*
- *[Android setup](https://flutter.dev/docs/get-started/install/macos#android-setup)*

Run the following command to check if everything was setup correctly:

```bash
$ flutter doctor
```

### Running 

> Start the emulator if you are using one.

Clone the project by running the following command in your terminal.

```bash
$ git clone https://github.com/Araekiel/seismic.git
```

Navigate to the repo folder in your terminal and enter the following command to run the project.

```bash
$ flutter run
```

## Refs 

- USGS Earthquake API: *[https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson](https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson)*

## Authors

- **Araekiel** - [Github](https://github.com/Araekiel)

## License

MIT License

Copyright (c) 2020 Kumar Shashwat

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