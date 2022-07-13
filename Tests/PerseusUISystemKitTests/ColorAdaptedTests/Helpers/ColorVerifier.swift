//
//  ColorVerifier.swift
//  PerseusUISystemKitTests
//
//  Created by Mikhail Zhigulin in 2022.
//
//  Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
//  All rights reserved.
//

#if !os(macOS)
import UIKit
#endif

import XCTest
@testable import PerseusDarkMode
@testable import PerseusUISystemKit

final class ColorVerifier {
    class func verify(requirement: ColorRequirement,
                      _ requiredLight: UIColor?,
                      _ requiredDark: UIColor?,
                      _ iOS13color: UIColor?,
                      file: StaticString = #file,
                      line: UInt = #line) {
        if #available(iOS 13.0, *), iOS13color != nil {
            XCTAssertEqual(requirement.color, iOS13color)
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
