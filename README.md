# Smadex AppLovin MAX iOS Adapter

The Smadex AppLovin MAX adapter mediates Smadex demand through the AppLovin MAX iOS SDK.

This repository distributes the precompiled Smadex adapter and its required dependencies through Swift Package Manager.

## Minimum requirements

| Component | Version |
| --------- | ------- |
| iOS | 12.0+ |
| Xcode | 16.0+ |
| AppLovin MAX iOS SDK | 13.7.0 |

## Supported ad formats

- Banner
- Interstitial
- Rewarded

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies**.
2. Enter the repository URL:

   ```text
   https://github.com/smadex/smadex-ios-sdk-applovin-spm.git
   ```

3. Select **Exact Version** and enter the adapter version required by your integration.
4. Add the `SmadexAppLovinAdapter` product to your application target.

### Package.swift

Add the package dependency using the required adapter version:

```swift
dependencies: [
    .package(url: "https://github.com/smadex/smadex-ios-sdk-applovin-spm.git", exact: "13.7.1")
]
```

Then add the adapter product to your target dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "SmadexAppLovinAdapter", package: "smadex-ios-sdk-applovin-spm")
    ]
)
```

Add `-ObjC` to the application target's **Other Linker Flags** so AppLovin MAX can discover the adapter at runtime.

## Included dependencies

- `SmadexSDK`
- `AppLovinSDK`

Do not add these dependencies separately or integrate the same frameworks through another dependency manager in the same application target.

## AppLovin MAX configuration

Configure Smadex as a MAX custom network using `AppLovinAdapter` as the adapter class.

Provide the Smadex ad unit identifier in the custom parameters for each placement:

```json
{
  "ad_unit_id": "YOUR_SMADEX_AD_UNIT_ID"
}
```

## More information

- [AppLovin MAX iOS integration guide](https://developers.applovin.com/en/max/ios/overview/integration/)

## Support

For integration support or account configuration, contact your Smadex representative.
