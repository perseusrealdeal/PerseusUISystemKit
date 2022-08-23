//
//  ColorVerifier.swift
//  PerseusUISystemKitTests
//
//  Created by Mikhail Zhigulin in 2022.
//
//  Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
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
public typealias ColorRequirement = ColorRequirementiOS
#elseif os(macOS)
public typealias Color = NSColor
public typealias ColorRequirement = ColorRequirementmacOS
#endif

final class ColorVerifier {
    class func verify(requirement: ColorRequirement,
                      _ requiredLight: Color?,
                      _ requiredDark: Color?,
                      _ colorOS: Color?,
                      file: StaticString = #file,
                      line: UInt = #line) {
        if #available(iOS 13.0, *), colorOS != nil {
            XCTAssertEqual(requirement.color, colorOS)
        } else {
            AppearanceService.DarkModeUserChoice = .off
            AppearanceService.makeUp()

            XCTAssertEqual(requirement.color, requiredLight)

            AppearanceService.DarkModeUserChoice = .on
            AppearanceService.makeUp()

            XCTAssertEqual(requirement.color, requiredDark)
        }
    }
}
