//
//  UITableViewRegister.swift
//  PHUIKitCore
//
//  Created by Panghu Lee on 2019/12/4.
//  Copyright © 2019 Panghu Lee. All rights reserved.
//

import UIKit
import PHFoundation

extension PHFoundationDSL where Target: UITableView {
    
    public func dequeue(_ cell: UITableViewCell.Type) -> UITableViewCell? {
        return target.dequeueReusableCell(withIdentifier: NSStringFromClass(cell))
    }
    
    public func dequeue(_ cell: UITableViewCell.Type, for indexPath: IndexPath) -> UITableViewCell {
        return target.dequeueReusableCell(withIdentifier: NSStringFromClass(cell), for: indexPath)
    }
    
    public func dequeue(view: UITableViewHeaderFooterView.Type) -> UITableViewHeaderFooterView? {
        return target.dequeueReusableHeaderFooterView(withIdentifier: NSStringFromClass(view))
    }
    
    public func register(_ cell: UITableViewCell.Type) {
        target.register(cell, forCellReuseIdentifier:NSStringFromClass(cell))
    }
    
    public func register(_ view: UITableViewHeaderFooterView.Type) {
        target.register(view, forHeaderFooterViewReuseIdentifier:NSStringFromClass(view))
    }
}
