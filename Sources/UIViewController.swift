//
//  UIViewController.swift
//  PHUIKitCore
//
//  Created by Panghu on 3/6/20.
//  Copyright © 2020 Panghu Lee. All rights reserved.
//

import UIKit
import PHFoundation

// Child UIViewController

extension PHFoundationDSL where Target: UIViewController {
    
    public func addChild(_ childController: UIViewController, toView: UIView? = nil, frame: CGRect? = nil) {
        target.addChild(childController)
        if let toView = toView {
            toView.addSubview(childController.view)
        }
        if let frame = frame {
            childController.view.frame = frame
        }
        childController.didMove(toParent: target)
    }
    
    public func removeFromParent() {
        target.willMove(toParent: nil)
        target.view.removeFromSuperview()
        target.removeFromParent()
    }
}

