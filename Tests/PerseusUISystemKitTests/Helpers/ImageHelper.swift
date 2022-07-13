//
//  ImageHelper.swift
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

func createImage() -> UIImage {
    UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0),
                         size: CGSize(width: 1, height: 1))).asImage()
}

extension UIView {
    func asImage() -> UIImage {
        if #available(iOS 10.0, *) {
            let renderer = UIGraphicsImageRenderer(bounds: bounds)
            return renderer.image { rendererContext in
                layer.render(in: rendererContext.cgContext)
            }
        } else {
            UIGraphicsBeginImageContext(self.frame.size)

            self.layer.render(in: UIGraphicsGetCurrentContext()!)
            let image = UIGraphicsGetImageFromCurrentImageContext()

            UIGraphicsEndImageContext()

            return UIImage(cgImage: image!.cgImage!)
        }
    }
}
