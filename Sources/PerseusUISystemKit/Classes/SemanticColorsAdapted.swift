//
//  SemanticColorsAdapted.swift
//  PerseusUISystemKit
//
//  Created by Mikhail Zhigulin in 2022.
//
//  Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
//  Licensed under the MIT license. See LICENSE file.
//  All rights reserved.
//
// swiftlint:disable identifier_name

#if canImport(UIKit)
import UIKit
#elseif canImport(Cocoa)
import Cocoa
#endif

import PerseusDarkMode

#if os(iOS)
/// Brings semantic colors to early iOS releases.
///
/// Each color is either native SDK color or self-made.
/// It means that for those iOS versions where a color is not released a self-made adaptation in use.
extension UIColor: SemanticColorProtocol {
    // MARK: - FOREGROUND

    /// Label.
    public static var label_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(0, 0, 0) : rgba255(255, 255, 255)

            return color
        }

        return .label
    }

    /// Secondary label.
    public static var secondaryLabel_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(60, 60, 67, 0.6) : rgba255(235, 235, 245, 0.6)

            return color
        }

        return .secondaryLabel
    }

    /// Tertiary label.
    public static var tertiaryLabel_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(60, 60, 67, 0.3) : rgba255(235, 235, 245, 0.3)

            return color
        }

        return .tertiaryLabel
    }

    /// Quaternary label.
    public static var quaternaryLabel_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(60, 60, 67, 0.18) : rgba255(235, 235, 245, 0.16)

            return color
        }

        return .quaternaryLabel
    }

    /// Placeholder text.
    public static var placeholderText_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(60, 60, 67, 0.3) : rgba255(235, 235, 245, 0.3)

            return color
        }

        return .placeholderText
    }

    /// Separator.
    public static var separator_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(60, 60, 67, 0.29) : rgba255(84, 84, 88, 0.6)

            return color
        }

        return .separator
    }

    /// Opaque separator.
    public static var opaqueSeparator_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(198, 198, 200) : rgba255(56, 56, 58)

            return color
        }

        return .opaqueSeparator
    }

    /// Link.
    public static var link_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(0, 122, 255) : rgba255(9, 132, 255)

            return color
        }

        return .link
    }

    /// System fill.
    public static var systemFill_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(120, 120, 128, 0.2) : rgba255(120, 120, 128, 0.36)

            return color
        }

        return .systemFill
    }

    /// Secondary system fill.
    public static var secondarySystemFill_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(120, 120, 128, 0.16) : rgba255(120, 120, 128, 0.32)

            return color
        }

        return .secondarySystemFill
    }

    /// Tertiary system fill.
    public static var tertiarySystemFill_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(118, 118, 128, 0.12) : rgba255(118, 118, 128, 0.24)

            return color
        }

        return .tertiarySystemFill
    }

    /// Quaternary system fill.
    public static var quaternarySystemFill_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(116, 116, 128, 0.08) : rgba255(118, 118, 128, 0.18)

            return color
        }

        return .quaternarySystemFill
    }

    // MARK: - BACKGROUND

    /// System background.
    public static var systemBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(255, 255, 255) : rgba255(28, 28, 30)

            return color
        }

        return .systemBackground
    }

    /// Secondary system background.
    public static var secondarySystemBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(242, 242, 247) : rgba255(44, 44, 46)

            return color
        }

        return .secondarySystemBackground
    }

    /// Tertiary system background.
    public static var tertiarySystemBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(255, 255, 255) : rgba255(58, 58, 60)

            return color
        }

        return .tertiarySystemBackground
    }

    /// System grouped background.
    public static var systemGroupedBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(242, 242, 247) : rgba255(28, 28, 30)

            return color
        }

        return .systemGroupedBackground
    }

    /// Secondary system grouped background.
    public static var secondarySystemGroupedBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(255, 255, 255) : rgba255(44, 44, 46)

            return color
        }

        return .secondarySystemGroupedBackground
    }

    /// Tertiary system grouped background.
    public static var tertiarySystemGroupedBackground_Adapted: UIColor {
        guard #available(iOS 13.0, *), theColorIsDarkModeNativeWithThisOS else {
            let color = AppearanceService.shared.Style == .light ?

                rgba255(242, 242, 247) : rgba255(58, 58, 60)

            return color
        }

        return .tertiarySystemGroupedBackground
    }
}
#elseif os(macOS)
extension NSColor: SemanticColorProtocol {
    public static var alternateSelectedControlTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var alternatingContentBackgroundColors_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var controlAccentColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var controlBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var controlColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var controlTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var currentControlTint_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var disabledControlTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var findHighlightColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var gridColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var headerTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var highlightColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var keyboardFocusIndicatorColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var labelColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var linkColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var placeholderTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var quaternaryLabelColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var scrubberTexturedBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var secondaryLabelColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedContentBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedControlColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedControlTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedMenuItemTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedTextBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var selectedTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var separatorColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var shadowColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var tertiaryLabelColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var textBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var textColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var underPageBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var unemphasizedSelectedContentBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var unemphasizedSelectedTextBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var unemphasizedSelectedTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var windowBackgroundColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }

    public static var windowFrameTextColor_Adapted: NSColor {
        return rgba255(255, 255, 255)
    }
}
#endif
