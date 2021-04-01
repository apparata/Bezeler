
# Bezeler

Bezeler is a Swift package containing SwiftUI views for low-fidelity iPhone bezels to use in mockups and such.

## License

See the LICENSE file for licensing information (MIT License).

## Limitations

- The bezels are not 100% pixel perfect, but close enough for me. 🙂 This package is not meant to be used for rendering marketing materials and such.
- Only the following phone models are supported:
    - iPhone 11
    - iPhone 11 Pro
    - iPhone 11 Pro Max
    - iPhone 12 mini
    - iPhone 12
    - iPhone 12 Pro
    - iPhone 12 Pro Max

## Example

Here's a basic example:

```swift
MockDevice(.iPhone11) {
    Text("Hello, World!")
        .font(.title)
}
.mockDeviceScale(0.7)
.mockDeviceBackgroundColor(.white)
.mockDeviceBezelWidth(15)
.mockDeviceBezelColor(.black)
.mockDeviceStatusBarColor(.black)
.mockDeviceHomeIndicatorColor(.black)
.mockDeviceTime("9:41")
.mockDeviceFeatures([
    .buttons,
    .notch,
    .statusBar,
    .homeIndicator
])
```

This is what it would look like if we added the example view for each of the supported phone models:

<img width="2426" alt="screenshot_3281" src="https://user-images.githubusercontent.com/384210/113225609-555b7300-928e-11eb-888b-36a571d505e0.png">
