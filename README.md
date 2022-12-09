# Perseus UI System Kit

[![Actions Status](https://github.com/perseusrealdeal/PerseusUISystemKit/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/actions)
![Version](https://img.shields.io/badge/Version-1.1.0-informational.svg)
![Pod](https://img.shields.io/badge/Pod-1.1.0-informational.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%209.3+,%20macOS%2010.9+-orange.svg)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-red.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![License](http://img.shields.io/:License-MIT-blue.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/blob/6dfadf409147fd736c20c5280e30e500fbcf0f81/LICENSE)

## Integration Capabilities

[![Standalone File](https://img.shields.io/badge/Standalone%20File-available-informational.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/blob/6dfadf409147fd736c20c5280e30e500fbcf0f81/PerseusUISystemKitSingle.swift)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-4BC51D.svg)](https://github.com/apple/swift-package-manager)
[![CocoaPods manager](https://img.shields.io/badge/CocoaPods-compatible-4BC51D.svg)](https://cocoapods.org)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)

## Dependencies

[![PerseusDarkMode](http://img.shields.io/:PerseusDarkMode-1.1.0-green.svg)](https://github.com/perseusrealdeal/PerseusDarkMode/tree/1.1.0)

## Demo Apps and Others

[![Demo App](https://img.shields.io/badge/iOS%20Demo%20App-available-yellow.svg)](https://github.com/perseusrealdeal/ios.darkmode.discovery.git)
[![Demo App](https://img.shields.io/badge/macOS%20Demo%20App-available-yellow.svg)](https://github.com/perseusrealdeal/macos.darkmode.discovery.git)
[![XcodeTemplateProject](http://img.shields.io/:Template-XcodeTemplateProject-blue.svg)](https://github.com/perseusrealdeal/XcodeTemplateProject.git)

## In Brief

This library brings a developer some modern but simple tools like system and semantic colors, and dynamic image, all used with Perseus Dark Mode in runtime to make Dark Mode sensitive UI up.

## Reqirements

- Xcode 10.1+
- Swift 4.2+
- iOS: 9.3+, UIKit SDK
- macOS: 10.9+, AppKit SDK

## First-party software

- [Perseus Dark Mode](https://github.com/perseusrealdeal/PerseusDarkMode.git)

## Third-party software

- [SwiftLint Shell Script Runner](https://github.com/perseusrealdeal/PerseusUISystemKit/blob/eae74253eb86cacf38d5363d19042c4ebe951d34/SucceedsPostAction.sh)

## Installation

### Standalone 

Make a copy of the file [`PerseusUISystemKitSingle.swift`](https://github.com/perseusrealdeal/PerseusUISystemKit/blob/6dfadf409147fd736c20c5280e30e500fbcf0f81/PerseusUISystemKitSingle.swift) then put it into a place required of a host project.

### CocoaPods

Podfile should contain:

```ruby
target "ProjectTarget" do
  use_frameworks!
  pod 'PerseusUISystemKit', '1.1.0'
end
```
### Carthage

Cartfile should contain:

```carthage
github "perseusrealdeal/PerseusDarkMode" == 1.1.0
github "perseusrealdeal/PerseusUISystemKit" == 1.1.0
```
[HowTo](https://gist.github.com/perseusrealdeal/8951b10f4330325df6347aaaa79d3cf2) add swift package to a host project with Carthage.

### Swift Package Manager

- As a package dependency so Package.swift should contain the following statements:

```swift
dependencies: [
        .package(url: "https://github.com/perseusrealdeal/PerseusUISystemKit.git",
            .exact("1.1.0"))
    ],
```

- As an Xcode project dependency: 

`Project in the Navigator > Package Dependencies > Add Package Dependency`

It is strongly recommended using "Exact" with the Version field.

## Usage

### Setup

Step 1: import PerseusDarkMode and call makeUp() in app's delegate:

```swift
import PerseusDarkMode

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // ... code
        
        AppearanceService.makeUp()

        return true
    }
}
```

Step 2: and only if iOS, so, override method traitCollectionDidChange of the first app's screen, once 

```swift
import PerseusDarkMode

class MainViewController: UIViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if #available(iOS 13.0, *) {
            AppearanceService.processTraitCollectionDidChange(previousTraitCollection)
        }
    }
}
```

### Using

Step 3: import PerseusUISystemKit and register a view controller of a screen
Step 4: then put all UI customs into makeUp() mathod of a registered view controller

```swift
import PerseusDarkMode
import PerseusUISystemKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        AppearanceService.register(stakeholder: self, selector: #selector(makeUp))
    }

    @objc private func makeUp() {
        print("^_^ \(AppearanceService.DarkModeUserChoice)"

        view.backgroundColor = .perseusBlue
    }
}
```

## License MIT

Copyright © 7530 - 7531 Mikhail Zhigulin of Novosibirsk.

- The year starts from the creation of the world according to a Slavic calendar.
- September, the 1st of Slavic year.

Have a look at [LICENSE](https://github.com/perseusrealdeal/PerseusUISystemKit/blob/6dfadf409147fd736c20c5280e30e500fbcf0f81/LICENSE) for details.

## Author and Acknowledgments

`PerseusUISystemKit` was written at Novosibirsk by Mikhail Zhigulin i.e. me, mzhigulin@gmail.com.

Mostly I'd like thank my lovely parents for supporting me in all my ways.
