//
//  DarkModeImageView.swift
//  PerseusUISystemKit
//
//  Created by Mikhail Zhigulin in 2022.
//
//  Copyright (c) 2022 Mikhail Zhigulin of Novosibirsk.
//  Licensed under the MIT license. See LICENSE file.
//  All rights reserved.
//
// swiftlint:disable valid_ibinspectable

#if canImport(UIKit)
import UIKit
#elseif canImport(Cocoa)
import Cocoa
#endif

import PerseusDarkMode

#if os(iOS)
    public typealias ImageView = UIImageView
    public typealias Image = UIImage
#elseif os(macOS)
    public typealias ImageView = NSImageView
    public typealias Image = NSImage
#endif

/// Represents a quite light implementation of a dynamic image idea that depends on the app's appearance style.
///
/// Use Interface Builder to set images up for both light and dark styles.
public class DarkModeImageView: ImageView {
    /// The way to set image up for light style via Interface Builder.
    @IBInspectable var imageLight: Image? {
        didSet {
            light = imageLight
            image = AppearanceService.shared.Style == .light ? light : dark
        }
    }

    /// The way to set image up for dark style via Interface Builder.
    @IBInspectable var imageDark: Image? {
        didSet {
            dark = imageDark
            image = AppearanceService.shared.Style == .light ? light : dark
        }
    }

    /// Observer for the app's appearance style changes.
    private(set) var darkModeObserver: DarkModeObserver?

    /// When the app's appearance style is Light.
    private(set) var light: Image?
    /// When the app's appearance style is Dark.
    private(set) var dark: Image?

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    /// Configures the view.
    private func configure() {
        darkModeObserver = DarkModeObserver { style in
            self.image = style == .light ? self.light : self.dark
        }
    }

    /// Sets images for both light and dark styles.
    /// - Parameters:
    ///   - light: Image for light style.
    ///   - dark: Image for dark style.
    public func configure(_ light: Image?, _ dark: Image?) {
        self.light = light
        self.dark = dark

        darkModeObserver?.action = { style in
            self.image = style == .light ? self.light : self.dark
        }

        image = AppearanceService.shared.Style == .light ? self.light : self.dark
    }
}
