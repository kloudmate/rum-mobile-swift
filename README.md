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

KloudMateRum.shared.doInit(config: KloudMateRumConfig(
    endpoint: "https://otel.kloudmate.com:4318",
    rumAccessToken: "pk_your_public_key",
    applicationName: "MyApp",
    deploymentEnvironment: "production",
    version: "1.0.0"
))
```

Screen views, taps, app start, HTTP calls, crashes, and hangs are captured
automatically after this call.

## HTTP capture

Requests made with `URLSession.shared` or `NSURLConnection` are captured
automatically. For a session you create from a `URLSessionConfiguration`,
register it first:

```swift
let configuration = URLSessionConfiguration.default
KloudMateRum.shared.instrument(configuration: configuration)
let session = URLSession(configuration: configuration)
```

## API reference

### Identity

```swift
// Identify the current user, typically after sign in.
KloudMateRum.shared.setUser(id: "u123", email: "alice@example.com", extra: [:])

// Clear the user and start a new session. Call this on sign out.
KloudMateRum.shared.endSession()
```

### Global attributes

Attributes added here are attached to everything the SDK sends.

```swift
KloudMateRum.shared.setGlobalAttributes(attrs: ["tenant": "acme", "plan": "pro"])
let current = KloudMateRum.shared.getGlobalAttributes()
```

### Session

```swift
let sessionId = KloudMateRum.shared.getSessionId()
```

### Screens

Screen views are tracked automatically. Report screens yourself when using
SwiftUI or custom navigation the SDK cannot observe:

```swift
KloudMateRum.shared.setCurrentScreen(name: "Checkout")

// Mark the first screen usable, which records time to fully drawn.
KloudMateRum.shared.reportFullyDrawn()
```

### Custom events

```swift
KloudMateRum.shared.addEvent(name: "checkout_completed", attributes: ["value": 49.99, "currency": "USD"])
```

Use a constant event name and put the varying parts in the attributes. An
attribute named `value` is treated as a numeric measurement.

### Errors

```swift
// Report a handled error.
KloudMateRum.shared.reportError(
    name: "PaymentError",
    message: "card declined",
    stack: "",
    fatal: false
)

// Report a caught exception with optional extra attributes.
KloudMateRum.shared.recordException(
    type: "PaymentError",
    message: "card declined",
    stackTrace: nil,
    attributes: [:]
)
```

### Manual spans

Time a unit of work and end the span when it finishes:

```swift
let span = KloudMateRum.shared.startWorkflow(name: "sync_contacts")
// ... work ...
span.end()
```

### Logging

```swift
KloudMateRum.shared.d(tag: "Checkout", message: "started")
KloudMateRum.shared.i(tag: "Checkout", message: "step complete")
KloudMateRum.shared.w(tag: "Checkout", message: "retrying")
KloudMateRum.shared.e(tag: "Checkout", message: "failed")
```

### WebView

Share the current session with an in app WebView so native and web activity
appear in one session:

```swift
KloudMateRum.shared.integrateWithWebView(webView: webView)
```

## License

MIT
