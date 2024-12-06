## Geofence SDK

Geofence SDK supports a Geofence component that works with a variety of Geofence geolocation providers. This article shows how to use  Geofence component in your code.

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### SPM PACKAGE MANAGER
This is an example of how to list things you need to use the software and how to install them with Swif Package Manager.

GeofenceSDK 1.0.0 -> https://github.com/umutboz/geofence-sdk.git
_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

1. Get a SPM Dependency [Geofence-sdk](https://github.com/umutboz/geofence-sdk.git)
 ## Requirement
* iOS 15
* Xcode 11.0+
* Swift 5 +
2. Clone the repo
   ```sh
   https://github.com/umutboz/geofence-sdk.git
   ```
3. Install SPM packages
   ```sh
   geofence-sdk
   ```
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

## startGeofenceMonitoring
   ```swift
   GeofenceSDK.shared.startGeofenceMonitoring(locations: [
        ("Home", 37.7749, -122.4194),
        ("Office", 37.7749, -122.4194),
        ("School", 37.700, -122.4100)
    ])
   ```
   
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

## License
Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments
Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
