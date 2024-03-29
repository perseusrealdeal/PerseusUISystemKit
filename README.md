# Perseus UI System Kit

[![Actions Status](https://github.com/perseusrealdeal/PerseusUISystemKit/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/actions)
[![Version](https://img.shields.io/badge/Version-1.1.4-informational.svg)](/Package.swift)
[![Pod](https://img.shields.io/badge/Pod-1.1.3-informational.svg)](/PerseusUISystemKit.podspec)
![Platforms](https://img.shields.io/badge/Platforms-iOS%209.3+,%20macOS%2010.10+-orange.svg)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-red.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![License](http://img.shields.io/:License-MIT-blue.svg)](/LICENSE)

## Integration Capabilities

[![Standalone](https://img.shields.io/badge/Standalone-available-informational.svg)](/PerseusUISystemKitSingle.swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods manager](https://img.shields.io/badge/CocoaPods-compatible-4BC51D.svg)](/PerseusUISystemKit.podspec)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-4BC51D.svg)](/Package.swift)

## Dependencies

[![PerseusDarkMode](http://img.shields.io/:PerseusDarkMode-1.1.5-green.svg)](https://github.com/perseusrealdeal/PerseusDarkMode/tree/1.1.5)

## Demo Apps and Others

[![Demo App](https://img.shields.io/badge/iOS%20Demo%20App-available-yellow.svg)](https://github.com/perseusrealdeal/ios.darkmode.discovery.git)
[![Demo App](https://img.shields.io/badge/macOS%20Demo%20App-available-yellow.svg)](https://github.com/perseusrealdeal/macos.darkmode.discovery.git)
[![XcodeTemplateProject](http://img.shields.io/:Template-XcodeTemplateProject-blue.svg)](https://github.com/perseusrealdeal/XcodeTemplateProject.git)

# In Brief

> This library brings a developer some modern but simple tools like system and semantic colors, and dynamic image. Features of this library can be used to create Dark Mode sensitive UI for both macOS and iOS apps as well.

# Reqirements

- Xcode 10.1+
- Swift 4.2+
- iOS: 9.3+, UIKit SDK
- macOS: 10.10+, AppKit SDK

# First-party software

- [PerseusLogger](https://gist.github.com/perseusrealdeal/df456a9825fcface44eca738056eb6d5)
- [Perseus Dark Mode](https://github.com/perseusrealdeal/PerseusDarkMode.git) / [1.1.5](https://github.com/perseusrealdeal/perseusdarkmode/releases/tag/1.1.5)

# Third-party software

- [SwiftLint Shell Script Runner](/SucceedsPostAction.sh)
- [SwiftLint](https://github.com/realm/SwiftLint) / [0.31.0: Busy Laundromat](https://github.com/realm/SwiftLint/releases/tag/0.31.0) for macOS High Sierra

# Installation

> ***Using "Exact" with the Version field is strongly recommended.***

## Standalone 

Make a copy of the file [`PerseusUISystemKitSingle.swift`](/PerseusUISystemKitSingle.swift) then put it into a place required of a host project.

## Carthage

Cartfile should contain:

```carthage
github "perseusrealdeal/PerseusDarkMode" == 1.1.5
github "perseusrealdeal/PerseusUISystemKit" == 1.1.4
```
Some Carthage usage tips placed [here](https://gist.github.com/perseusrealdeal/8951b10f4330325df6347aaaa79d3cf2).

## CocoaPods

Podfile should contain:

```ruby
target "ProjectTarget" do
  use_frameworks!
  pod 'PerseusUISystemKit', '1.1.3'
end
```

## Swift Package Manager

- As a package dependency Package.swift should contain the following statements:

```swift
dependencies: [
        .package(url: "https://github.com/perseusrealdeal/PerseusUISystemKit.git",
            .exact("1.1.4"))
    ],
```

- As an Xcode project dependency: 

`Project in the Navigator > Package Dependencies > Add Package Dependency`

> ***Using "Exact" with the Version field is strongly recommended.***

# Usage

## Setup

Step 1: import PerseusDarkMode and call makeUp() in app's delegate:

```swift
import PerseusDarkMode

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // ... code

        // Call AppearanceService.makeUp() method if AppearanceService.register(:, :)
        // is taken into account
        AppearanceService.makeUp()

        // ... otherwise call AppearanceService.recalculateStyleIfNeeded()
        // to load DarkMode.style from user defaults
        // AppearanceService.recalculateStyleIfNeeded()
    }
}
```

Step 2: only if iOS, override method traitCollectionDidChange of the first app's screen, once 

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

## Using

Step 3: register a view controller of a screen

```swift
import PerseusDarkMode

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        AppearanceService.register(stakeholder: self, selector: #selector(makeUp))
    }

    @objc private func makeUp() {
        // UI customs put here
    }
}
```

Step 4: import PerseusUISystemKit and put all UI customs into makeUp() method

```swift
import PerseusDarkMode
import PerseusUISystemKit

class MainViewController: UIViewController {

    // ... code

    @objc private func makeUp() {
        print("^_^ \(DarkMode.style) \(UIColor.perseusBlue.RGBA255)")
        
        view.backgroundColor = .perseusBlue
    }
}
```

There is another way to be notified of Dark Mode—KVO. 

> [`DarkModeImageView`](/Sources/PerseusUISystemKit/Classes/DarkModeImageView.swift) class is an expressive sample of Dark Mode KVO usage for both macOS and iOS as well.

# License MIT

Copyright © 7530 - 7531 Mikhail Zhigulin of Novosibirsk.

- The year starts from the creation of the world according to a Slavic calendar.
- September, the 1st of Slavic year.

[LICENSE](/LICENSE) for details.

# Author

> `PerseusUISystemKit` was written at Novosibirsk by Mikhail Zhigulin i.e. me, mzhigulin@gmail.com.

> Mostly I'd like thank my lovely parents for supporting me in all my ways.
