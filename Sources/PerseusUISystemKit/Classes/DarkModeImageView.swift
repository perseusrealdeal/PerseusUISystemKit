//
//  DarkModeImageView.swift
//  PerseusUISystemKit
//
//  Created by Mikhail Zhigulin in 7530.
//
//  Copyright © 7530 - 7531 Mikhail Zhigulin of Novosibirsk.
//
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

// MARK: - Image View with Dynamic Apperance Changing

public class DarkModeImageView: ImageView {

    @IBInspectable
    var imageLight: Image? {
        didSet {
            light = imageLight
            image = DarkMode.style == .light ? light : dark
        }
    }

    @IBInspectable
    var imageDark: Image? {
        didSet {
            dark = imageDark
            image = DarkMode.style == .light ? light : dark
        }
    }

    private(set) var darkModeObserver: DarkModeObserver?

    private(set) var light: Image?
    private(set) var dark: Image?

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    private func configure() {
        darkModeObserver = DarkModeObserver { style in
            self.image = style == .light ? self.light : self.dark
        }
    }

    public func configure(_ light: Image?, _ dark: Image?) {
        self.light = light
        self.dark = dark

        darkModeObserver?.action = { style in
            self.image = style == .light ? self.light : self.dark
        }

        image = DarkMode.style == .light ? self.light : self.dark
    }
}
