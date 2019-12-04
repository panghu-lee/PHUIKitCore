//
//  UICollectionViewRegister.swift
//  PHUIKitCore
//
//  Created by Panghu Lee on 2019/12/4.
//  Copyright © 2019 Panghu Lee. All rights reserved.
//

import UIKit
import PHFoundation

extension PHFoundationDSL where Target: UICollectionView {
    
    public func register(_ cell: UICollectionViewCell.Type) {
        target.register(cell, forCellWithReuseIdentifier: NSStringFromClass(cell))
    }
    
    public func register(header: UICollectionReusableView.Type) {
        target.register(header, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NSStringFromClass(header))
    }
    
    public func register(footer: UICollectionReusableView.Type) {
        target.register(footer, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: NSStringFromClass(footer))
    }
    
    public func dequeue(_ cell: UICollectionViewCell.Type, for indexPath: IndexPath) -> UICollectionViewCell {
        return target.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cell), for: indexPath)
    }
    
    public func dequeue(header: UICollectionReusableView.Type, for indexPath: IndexPath) -> UICollectionReusableView {
        return target.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NSStringFromClass(header), for: indexPath)
    }
    
    public func dequeue(footer: UICollectionReusableView.Type, for indexPath: IndexPath) -> UICollectionReusableView {
        return target.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: NSStringFromClass(footer), for: indexPath)
    }
}
