# KloudMateRum for iOS

Real User Monitoring for native iOS apps.

## Requirements

iOS 12 or later.

## Installation

Add the package in Xcode with File > Add Package Dependencies, using this URL:

```
https://github.com/kloudmate/rum-mobile-swift
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/kloudmate/rum-mobile-swift", from: "0.3.0")
]
```

## Getting started

Initialise the SDK once, from your `AppDelegate` or `App` init:

```swift
import KloudMateRum

KloudMateRum.shared.`init`(config: KloudMateRumConfig(
    endpoint: "https://otel.kloudmate.com:4318",
    rumAccessToken: "pk_your_public_key",
    applicationName: "MyApp",
    deploymentEnvironment: "production",
    version: "1.0.0"
))
```

## HTTP capture

Requests made with `URLSession.shared` or `NSURLConnection` are captured
automatically. For a session you create from a `URLSessionConfiguration`,
register it first:

```swift
let configuration = URLSessionConfiguration.default
KloudMateRum.shared.instrument(configuration: configuration)
let session = URLSession(configuration: configuration)
```

## Identifying users

Set the current user after they sign in:

```swift
KloudMateRum.shared.setUser(id: "u123", email: "alice@example.com", extra: [:])
```

## License

MIT
