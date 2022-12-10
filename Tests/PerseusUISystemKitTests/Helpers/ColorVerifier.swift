//
//  ColorVerifier.swift
//  PerseusUISystemKitTests
//
//  Created by Mikhail Zhigulin in 7530.
//
//  Copyright © 7530 - 7531 Mikhail Zhigulin of Novosibirsk.
//
//  Licensed under the MIT license. See LICENSE file.
//  All rights reserved.
//

#if canImport(UIKit)
import UIKit
#elseif canImport(Cocoa)
import Cocoa
#endif

import XCTest

@testable import PerseusDarkMode
@testable import PerseusUISystemKit

#if os(iOS)
public typealias Color = UIColor
#elseif os(macOS)
public typealias Color = NSColor
#endif

final class ColorVerifier {
    class func verify(required: ColorRequirement, _ light: Color, _ dark: Color,
                      file: StaticString = #file,
                      line: UInt = #line) {

        AppearanceService.DarkModeUserChoice = .off
        XCTAssertEqual(required.color, light)

        AppearanceService.DarkModeUserChoice = .on
        XCTAssertEqual(required.color, dark)
    }
}
