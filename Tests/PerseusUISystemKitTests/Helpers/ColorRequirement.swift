//
//  ColorRequirement.swift
//  PerseusUISystemKitTests
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

@testable import PerseusUISystemKit

#if os(iOS)
public enum ColorRequirementiOS {
    case label
    case secondaryLabel
    case tertiaryLabel
    case quaternaryLabel
    case placeholderText
    case separator
    case opaqueSeparator
    case link

    case systemFill
    case secondarySystemFill
    case tertiarySystemFill
    case quaternarySystemFill

    case systemBackground
    case secondarySystemBackground
    case tertiarySystemBackground

    case systemGroupedBackground
    case secondarySystemGroupedBackground
    case tertiarySystemGroupedBackground

    case systemRed
    case systemOrange
    case systemYellow
    case systemGreen
    case systemMint
    case systemTeal
    case systemCyan
    case systemBlue
    case systemIndigo
    case systemPurple
    case systemPink
    case systemBrown

    case systemGray
    case systemGray2
    case systemGray3
    case systemGray4
    case systemGray5
    case systemGray6

    var color: Color {
        switch self {
        case .label:
            return .label_Adapted
        case .secondaryLabel:
            return .secondaryLabel_Adapted
        case .tertiaryLabel:
            return .tertiaryLabel_Adapted
        case .quaternaryLabel:
            return .quaternaryLabel_Adapted
        case .placeholderText:
            return .placeholderText_Adapted
        case .separator:
            return .separator_Adapted
        case .opaqueSeparator:
            return .opaqueSeparator_Adapted
        case .link:
            return .link_Adapted

        case .systemFill:
            return .systemFill_Adapted
        case .secondarySystemFill:
            return .secondarySystemFill_Adapted
        case .tertiarySystemFill:
            return .tertiarySystemFill_Adapted
        case .quaternarySystemFill:
            return .quaternarySystemFill_Adapted

        case .systemBackground:
            return .systemBackground_Adapted
        case .secondarySystemBackground:
            return .secondarySystemBackground_Adapted
        case .tertiarySystemBackground:
            return .tertiarySystemBackground_Adapted

        case .systemGroupedBackground:
            return .systemGroupedBackground_Adapted
        case .secondarySystemGroupedBackground:
            return .secondarySystemGroupedBackground_Adapted
        case .tertiarySystemGroupedBackground:
            return .tertiarySystemGroupedBackground_Adapted

        case .systemRed:
            return .systemRed_Adapted
        case .systemOrange:
            return .systemOrange_Adapted
        case .systemYellow:
            return .systemYellow_Adapted
        case .systemGreen:
            return .systemGreen_Adapted
        case .systemMint:
            return .systemMint_Adapted
        case .systemTeal:
            return .systemTeal_Adapted
        case .systemCyan:
            return .systemCyan_Adapted
        case .systemBlue:
            return .systemBlue_Adapted
        case .systemIndigo:
            return .systemIndigo_Adapted
        case .systemPurple:
            return .systemPurple_Adapted
        case .systemPink:
            return .systemPink_Adapted
        case .systemBrown:
            return .systemBrown_Adapted

        case .systemGray:
            return .systemGray_Adapted
        case .systemGray2:
            return .systemGray2_Adapted
        case .systemGray3:
            return .systemGray3_Adapted
        case .systemGray4:
            return .systemGray4_Adapted
        case .systemGray5:
            return .systemGray5_Adapted
        case .systemGray6:
            return .systemGray6_Adapted
        }
    }
}
#elseif os(macOS)
public enum ColorRequirementmacOS {

    // List of system colors

    case systemRed
    case systemOrange
    case systemYellow
    case systemGreen
    case systemMint
    case systemTeal
    case systemCyan
    case systemBlue
    case systemIndigo
    case systemPurple
    case systemPink
    case systemBrown

    case systemGray

    // List of semantic colors

    case alternateSelectedControlTextColor
    case alternatingContentBackgroundColors
    case controlAccentColor
    case controlBackgroundColor
    case controlColor
    case controlTextColor
    case currentControlTint
    case disabledControlTextColor
    case findHighlightColor
    case gridColor
    case headerTextColor
    case highlightColor
    case keyboardFocusIndicatorColor
    case labelColor
    case linkColor
    case placeholderTextColor
    case quaternaryLabelColor
    case scrubberTexturedBackgroundColor
    case secondaryLabelColor
    case selectedContentBackgroundColor
    case selectedControlColor
    case selectedControlTextColor
    case selectedMenuItemTextColor
    case selectedTextBackgroundColor
    case selectedTextColor
    case separatorColor
    case shadowColor
    case tertiaryLabelColor
    case textBackgroundColor
    case textColor
    case underPageBackgroundColor
    case unemphasizedSelectedContentBackgroundColor
    case unemphasizedSelectedTextBackgroundColor
    case unemphasizedSelectedTextColor
    case windowBackgroundColor
    case windowFrameTextColor

    var color: Color {

        switch self {

        // gives system color adapted

        case .systemRed:
            return .systemRed_Adapted
        case .systemOrange:
            return .systemOrange_Adapted
        case .systemYellow:
            return .systemYellow_Adapted
        case .systemGreen:
            return .systemGreen_Adapted
        case .systemMint:
            return .systemMint_Adapted
        case .systemTeal:
            return .systemTeal_Adapted
        case .systemCyan:
            return .systemCyan_Adapted
        case .systemBlue:
            return .systemBlue_Adapted
        case .systemIndigo:
            return .systemIndigo_Adapted
        case .systemPurple:
            return .systemPurple_Adapted
        case .systemPink:
            return .systemPink_Adapted
        case .systemBrown:
            return .systemBrown_Adapted

        case .systemGray:
            return .systemGray_Adapted

        // gives semantic color adapted

        case .alternateSelectedControlTextColor:
            return .alternateSelectedControlTextColor_Adapted
        case .alternatingContentBackgroundColors:
            return .alternatingContentBackgroundColors_Adapted
        case .controlAccentColor:
            return .controlAccentColor_Adapted
        case .controlBackgroundColor:
            return .controlBackgroundColor_Adapted
        case .controlColor:
            return .controlColor_Adapted
        case .controlTextColor:
            return .controlTextColor_Adapted
        case .currentControlTint:
            return .currentControlTint_Adapted
        case .disabledControlTextColor:
            return .disabledControlTextColor_Adapted
        case .findHighlightColor:
            return .findHighlightColor_Adapted
        case .gridColor:
            return .gridColor_Adapted
        case .headerTextColor:
            return .headerTextColor_Adapted
        case .highlightColor:
            return .highlightColor_Adapted
        case .keyboardFocusIndicatorColor:
            return .keyboardFocusIndicatorColor_Adapted
        case .labelColor:
            return .labelColor_Adapted
        case .linkColor:
            return .linkColor_Adapted
        case .placeholderTextColor:
            return .placeholderTextColor_Adapted
        case .quaternaryLabelColor:
            return .quaternaryLabelColor_Adapted
        case .scrubberTexturedBackgroundColor:
            return .scrubberTexturedBackgroundColor_Adapted
        case .secondaryLabelColor:
            return .secondaryLabelColor_Adapted
        case .selectedContentBackgroundColor:
            return .selectedContentBackgroundColor_Adapted
        case .selectedControlColor:
            return .selectedControlColor_Adapted
        case .selectedControlTextColor:
            return .selectedControlTextColor_Adapted
        case .selectedMenuItemTextColor:
            return .selectedMenuItemTextColor_Adapted
        case .selectedTextBackgroundColor:
            return .selectedTextBackgroundColor_Adapted
        case .selectedTextColor:
            return .selectedTextColor_Adapted
        case .separatorColor:
            return .separatorColor_Adapted
        case .shadowColor:
            return .shadowColor_Adapted
        case .tertiaryLabelColor:
            return .tertiaryLabelColor_Adapted
        case .textBackgroundColor:
            return .textBackgroundColor_Adapted
        case .textColor:
            return .textColor_Adapted
        case .underPageBackgroundColor:
            return .underPageBackgroundColor_Adapted
        case .unemphasizedSelectedContentBackgroundColor:
            return .unemphasizedSelectedContentBackgroundColor_Adapted
        case .unemphasizedSelectedTextBackgroundColor:
            return .unemphasizedSelectedTextBackgroundColor_Adapted
        case .unemphasizedSelectedTextColor:
            return .unemphasizedSelectedTextColor_Adapted
        case .windowBackgroundColor:
            return .windowBackgroundColor_Adapted
        case .windowFrameTextColor:
            return .windowFrameTextColor_Adapted
        }
    }
}
#endif
