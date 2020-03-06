//
//  UIGraphics.swift
//  PHUIKitCore
//
//  Created by Panghu on 3/6/20.
//  Copyright © 2020 Panghu Lee. All rights reserved.
//

import UIKit

// UIImage context

public func PHUIGraphicsBeginImageContext(_ size: CGSize, _ opaque: Bool = true, _ scale: CGFloat = 0, _ excute: (CGContext) -> Void) {
    UIGraphicsBeginImageContextWithOptions(size, opaque, scale == 0 ? UIScreen.main.scale : scale)
    if let context = UIGraphicsGetCurrentContext() {
        excute(context)
    }
    UIGraphicsEndImageContext();
}
