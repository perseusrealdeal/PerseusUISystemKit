//
//  SemanticColorsAdaptedTests.swift
//  PerseusUISystemKitTests
//
//  Created by Mikhail Zhigulin in 2022.
//
//  Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
//  Licensed under the MIT license. See LICENSE file.
//  All rights reserved.
//

import XCTest
@testable import PerseusDarkMode
@testable import PerseusUISystemKit

#if os(iOS)
final class SemanticColorsAdaptedTests: XCTestCase {
    // MARK: - Testing Foreground Colors

    func test_label_Adapted() {
        let light = rgba255(0, 0, 0)
        let dark = rgba255(255, 255, 255)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .label, nil, nil, .label)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .label, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_secondaryLabel_Adapted() {
        let light = rgba255(60, 60, 67, 0.6)
        let dark = rgba255(235, 235, 245, 0.6)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .secondaryLabel, nil, nil, .secondaryLabel)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .secondaryLabel, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_tertiaryLabel_Adapted() {
        let light = rgba255(60, 60, 67, 0.3)
        let dark = rgba255(235, 235, 245, 0.3)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .tertiaryLabel, nil, nil, .tertiaryLabel)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .tertiaryLabel, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_quaternaryLabel_Adapted() {
        let light = rgba255(60, 60, 67, 0.18)
        let dark = rgba255(235, 235, 245, 0.16)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .quaternaryLabel, nil, nil, .quaternaryLabel)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .quaternaryLabel, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_placeholderText_Adapted() {
        let light = rgba255(60, 60, 67, 0.3)
        let dark = rgba255(235, 235, 245, 0.3)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .placeholderText, nil, nil, .placeholderText)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .placeholderText, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_separator_Adapted() {
        let light = rgba255(60, 60, 67, 0.29)
        let dark = rgba255(84, 84, 88, 0.6)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .separator, nil, nil, .separator)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .separator, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_opaqueSeparator_Adapted() {
        let light = rgba255(198, 198, 200)
        let dark = rgba255(56, 56, 58)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .opaqueSeparator, nil, nil, .opaqueSeparator)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .opaqueSeparator, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_link_Adapted() {
        let light = rgba255(0, 122, 255)
        let dark = rgba255(9, 132, 255)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .link, nil, nil, .link)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .link, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_systemFill_Adapted() {
        let light = rgba255(120, 120, 128, 0.2)
        let dark = rgba255(120, 120, 128, 0.36)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .systemFill, nil, nil, .systemFill)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .systemFill, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_secondarySystemFill_Adapted() {
        let light = rgba255(120, 120, 128, 0.16)
        let dark = rgba255(120, 120, 128, 0.32)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .secondarySystemFill, nil, nil, .secondarySystemFill)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .secondarySystemFill, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_tertiarySystemFill_Adapted() {
        let light = rgba255(118, 118, 128, 0.12)
        let dark = rgba255(118, 118, 128, 0.24)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .tertiarySystemFill, nil, nil, .tertiarySystemFill)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .tertiarySystemFill, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_quaternarySystemFill_Adapted() {
        let light = rgba255(116, 116, 128, 0.08)
        let dark = rgba255(118, 118, 128, 0.18)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .quaternarySystemFill, nil, nil, .quaternarySystemFill)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .quaternarySystemFill, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    // MARK: - Testing Background Colors

    func test_systemBackground_Adapted() {
        let light = rgba255(255, 255, 255)
        let dark = rgba255(28, 28, 30)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .systemBackground, nil, nil, .systemBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .systemBackground, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_secondarySystemBackground_Adapted() {
        let light = rgba255(242, 242, 247)
        let dark = rgba255(44, 44, 46)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .secondarySystemBackground, nil, nil, .secondarySystemBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .secondarySystemBackground, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_tertiarySystemBackground_Adapted() {
        let light = rgba255(255, 255, 255)
        let dark = rgba255(58, 58, 60)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .tertiarySystemBackground, nil, nil, .tertiarySystemBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .tertiarySystemBackground, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_systemGroupedBackground_Adapted() {
        let light = rgba255(242, 242, 247)
        let dark = rgba255(28, 28, 30)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .systemGroupedBackground, nil, nil, .systemGroupedBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .systemGroupedBackground, light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_secondarySystemGroupedBackground_Adapted() {
        let light = rgba255(255, 255, 255)
        let dark = rgba255(44, 44, 46)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .secondarySystemGroupedBackground,
                                 nil, nil, .secondarySystemGroupedBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .secondarySystemGroupedBackground,
                                 light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }

    func test_tertiarySystemGroupedBackground_Adapted() {
        let light = rgba255(242, 242, 247)
        let dark = rgba255(58, 58, 60)

        if #available(iOS 13.0, *) {
            UIColor.theColorIsDarkModeNativeWithThisOS = true
            ColorVerifier.verify(requirement: .tertiarySystemGroupedBackground,
                                 nil, nil, .tertiarySystemGroupedBackground)

            UIColor.theColorIsDarkModeNativeWithThisOS = false
            ColorVerifier.verify(requirement: .tertiarySystemGroupedBackground,
                                 light, dark, nil)
        } else {
            XCTFail("Test suit was designed for runing on iOS 13 and higher only!")
        }

        UIColor.theColorIsDarkModeNativeWithThisOS = true
    }
}
#elseif os(macOS)
// TODO: Unit tests to cover macOS adapted semantic (dynamic) colors
#endif
