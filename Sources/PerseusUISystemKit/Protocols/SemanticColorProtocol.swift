//
//  SemanticColorProtocol.swift
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

#if os(iOS)
/// Represents semantic colors requirements for iOS, iPadOS.
public protocol SemanticColorProtocol {
    // MARK: - FOREGROUND CONTENT

    // MARK: - Label Colors

    /// Label.
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 255, 255, 255
    static var label_Adapted: UIColor { get }

    /// Secondary label.
    ///
    /// - Light: 60, 60, 67, 0.6
    /// - Dark: 235, 235, 245, 0.6
    static var secondaryLabel_Adapted: UIColor { get }

    /// Tertiary label.
    ///
    /// - Light: 60, 60, 67, 0.3
    /// - Dark: 235, 235, 245, 0.3
    static var tertiaryLabel_Adapted: UIColor { get }

    /// Quaternary label.
    ///
    /// - Light: 60, 60, 67, 0.18
    /// - Dark: 235, 235, 245, 0.16
    static var quaternaryLabel_Adapted: UIColor { get }

    // MARK: - Text Colors

    /// Placeholder text.
    ///
    /// - Light: 60, 60, 67, 0.3
    /// - Dark: 235, 235, 245, 0.3
    static var placeholderText_Adapted: UIColor { get }

    // MARK: - Separator Colors

    /// Separator.
    ///
    /// - Light: 60, 60, 67, 0.29
    /// - Dark: 84, 84, 88, 0.6
    static var separator_Adapted: UIColor { get }

    /// Opaque separator.
    ///
    /// - Light: 198, 198, 200
    /// - Dark: 56, 56, 58
    static var opaqueSeparator_Adapted: UIColor { get }

    // MARK: - Link Color

    /// Link.
    ///
    /// - Light: 0, 122, 255
    /// - Dark: 9, 132, 255
    static var link_Adapted: UIColor { get }

    // MARK: - Fill Colors

    /// System fill.
    ///
    /// - Light: 120, 120, 128, 0.2
    /// - Dark: 120, 120, 128, 0.36
    static var systemFill_Adapted: UIColor { get }

    /// Secondary system fill.
    ///
    /// - Light: 120, 120, 128, 0.16
    /// - Dark: 120, 120, 128, 0.32
    static var secondarySystemFill_Adapted: UIColor { get }

    /// Tertiary system fill.
    ///
    /// - Light: 118, 118, 128, 0.12
    /// - Dark: 118, 118, 128, 0.24
    static var tertiarySystemFill_Adapted: UIColor { get }

    /// Quaternary system fill.
    ///
    /// - Light: 116, 116, 128, 0.08
    /// - Dark: 118, 118, 128, 0.18
    static var quaternarySystemFill_Adapted: UIColor { get }

    // MARK: - BACKGROUND CONTENT

    // MARK: - Standard

    /// System background.
    ///
    /// - Light: 255, 255, 255
    /// - Dark: 28, 28, 30
    static var systemBackground_Adapted: UIColor { get }

    /// Secondary system background.
    ///
    /// - Light: 242, 242, 247
    /// - Dark: 44, 44, 46
    static var secondarySystemBackground_Adapted: UIColor { get }

    /// Tertiary system background.
    ///
    /// - Light: 255, 255, 255
    /// - Dark: 58, 58, 60
    static var tertiarySystemBackground_Adapted: UIColor { get }

    // MARK: - Grouped

    /// System grouped background.
    ///
    /// - Light: 242, 242, 247
    /// - Dark: 28, 28, 30
    static var systemGroupedBackground_Adapted: UIColor { get }

    /// Secondary system grouped background.
    ///
    /// - Light: 255, 255, 255
    /// - Dark: 44, 44, 46
    static var secondarySystemGroupedBackground_Adapted: UIColor { get }

    /// Tertiary system grouped background.
    ///
    /// - Light: 242, 242, 247
    /// - Dark: 58, 58, 60
    static var tertiarySystemGroupedBackground_Adapted: UIColor { get }
}
#elseif os(macOS)
/// Represents semantic colors requirements for macOS.
public protocol SemanticColorProtocol {
    /// alternateSelectedControlTextColor
    ///
    /// The text on a selected surface in a list or table.
    /// macOS 10.2+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var alternateSelectedControlTextColor_Adapted: NSColor { get }

    /// alternatingContentBackgroundColors
    ///
    /// The backgrounds of alternating rows or columns in a list, table, or collection view.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var alternatingContentBackgroundColors_Adapted: NSColor { get }

    /// controlAccentColor
    ///
    /// The accent color selected by the user in System Settings.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var controlAccentColor_Adapted: NSColor { get }

    /// controlBackgroundColor
    ///
    /// The background of a large interface element, such as a browser or table.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var controlBackgroundColor_Adapted: NSColor { get }

    /// controlColor
    ///
    /// The color to use for the flat surfaces of a control.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var controlColor_Adapted: NSColor { get }

    /// controlTextColor
    ///
    /// The color to use for text on enabled controls.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var controlTextColor_Adapted: NSColor { get }

    /// currentControlTint
    ///
    /// The current system control tint color.
    /// macOS 10.3+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var currentControlTint_Adapted: NSColor { get }

    /// disabledControlTextColor
    ///
    /// The color to use for text on disabled controls.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var disabledControlTextColor_Adapted: NSColor { get }

    /// findHighlightColor
    ///
    /// The highlight color to use for the bubble that shows inline search result values.
    /// macOS 10.13+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var findHighlightColor_Adapted: NSColor { get }

    /// gridColor
    ///
    /// The color to use for the optional gridlines, such as those in a table view.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var gridColor_Adapted: NSColor { get }

    /// headerTextColor
    ///
    /// The color to use for text in header cells in table views and outline views.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var headerTextColor_Adapted: NSColor { get }

    /// highlightColor
    ///
    /// The color to use as a virtual light source on the screen.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var highlightColor_Adapted: NSColor { get }

    /// keyboardFocusIndicatorColor
    ///
    /// The color to use for the keyboard focus ring around controls.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var keyboardFocusIndicatorColor_Adapted: NSColor { get }

    /// labelColor
    ///
    /// The primary color to use for text labels.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var labelColor_Adapted: NSColor { get }

    /// linkColor
    ///
    /// The color to use for links.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var linkColor_Adapted: NSColor { get }

    /// placeholderTextColor
    ///
    /// The color to use for placeholder text in controls or text views.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var placeholderTextColor_Adapted: NSColor { get }

    /// quaternaryLabelColor
    ///
    /// The quaternary color to use for text labels and separators.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var quaternaryLabelColor_Adapted: NSColor { get }

    /// scrubberTexturedBackgroundColor
    ///
    /// The patterned color to use for the background of a scrubber control.
    /// macOS 10.12.2+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var scrubberTexturedBackgroundColor_Adapted: NSColor { get }

    /// secondaryLabelColor
    ///
    /// The secondary color to use for text labels.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var secondaryLabelColor_Adapted: NSColor { get }

    /// selectedContentBackgroundColor
    ///
    /// The color to use for the background of selected and emphasized content.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedContentBackgroundColor_Adapted: NSColor { get }

    /// selectedControlColor
    ///
    /// The surface of a selected control.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedControlColor_Adapted: NSColor { get }

    /// selectedControlTextColor
    ///
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedControlTextColor_Adapted: NSColor { get }

    /// selectedMenuItemTextColor
    ///
    /// The color to use for the text in menu items.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedMenuItemTextColor_Adapted: NSColor { get }

    /// selectedTextBackgroundColor
    ///
    /// The color to use for the background of selected text.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedTextBackgroundColor_Adapted: NSColor { get }

    /// selectedTextColor
    ///
    /// The color to use for selected text.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var selectedTextColor_Adapted: NSColor { get }

    /// separatorColor
    ///
    /// The color to use for separators between different sections of content.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var separatorColor_Adapted: NSColor { get }

    /// shadowColor
    ///
    /// The color to use for virtual shadows cast by raised objects on the screen.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var shadowColor_Adapted: NSColor { get }

    /// tertiaryLabelColor
    ///
    /// The tertiary color to use for text labels.
    /// macOS 10.10+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var tertiaryLabelColor_Adapted: NSColor { get }

    /// textBackgroundColor
    ///
    /// The color to use for the background area behind text.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var textBackgroundColor_Adapted: NSColor { get }

    /// textColor
    ///
    /// The color to use for text.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var textColor_Adapted: NSColor { get }

    /// underPageBackgroundColor
    ///
    /// The color to use in the area beneath your window's views.
    /// macOS 10.8+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var underPageBackgroundColor_Adapted: NSColor { get }

    /// unemphasizedSelectedContentBackgroundColor
    ///
    /// The color to use for selected and unemphasized content.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var unemphasizedSelectedContentBackgroundColor_Adapted: NSColor { get }

    /// unemphasizedSelectedTextBackgroundColor
    ///
    /// The color to use for the text background in an unemphasized context.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var unemphasizedSelectedTextBackgroundColor_Adapted: NSColor { get }

    /// unemphasizedSelectedTextColor
    ///
    /// The color to use for selected text in an unemphasized context.
    /// macOS 10.14+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var unemphasizedSelectedTextColor_Adapted: NSColor { get }

    /// windowBackgroundColor
    ///
    /// The color to use for the window background.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var windowBackgroundColor_Adapted: NSColor { get }

    /// windowFrameTextColor
    ///
    /// The color to use for text in a window's frame.
    /// macOS 10.0+
    ///
    /// - Light: 0, 0, 0
    /// - Dark: 0, 0, 0
    static var windowFrameTextColor_Adapted: NSColor { get }
}
#endif
