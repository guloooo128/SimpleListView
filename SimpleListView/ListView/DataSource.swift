//
//  ViewModel.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import Foundation
import UIKit

internal protocol DataSource where Self: UIView {
    
    var dataList: [[CellData]]? { set get }
    
    var placeHolder: PlaceHolder { set get }
    
    var headerHeight: CGFloat { get }
    
    func configurePlaceHolder()
    
    func prepareReloadData()
    
    func updatePlaceHolderFrame()
}

extension DataSource {
    internal func configurePlaceHolder() {
        placeHolder.isHidden = true
        addSubview(placeHolder)
        placeHolder.blankView = Config.shared.blankView
        placeHolder.noConnectionView = Config.shared.noConnectionView
        placeHolder.customView = Config.shared.customView
    }
    
    internal func prepareReloadData() {
        DispatchQueue.main.async {
            if let list = self.dataList, list.count > 0, self.placeHolder.contentView == nil {
                self.placeHolder.isHidden = true
            } else {
                self.placeHolder.isHidden = false
                self.placeHolder.updateContentView()
                self.setNeedsLayout()
            }
        }
    }
    
    internal func updatePlaceHolderFrame() {
        DispatchQueue.main.async {
            guard !self.placeHolder.isHidden else { return }
            let rect = CGRect(
                x: 0,
                y: self.headerHeight,
                width: bounds.width,
                height: bounds.height - self.headerHeight)
            
            if self.placeHolder.frame != rect {
                self.placeHolder.frame = rect
            }
        }
    }
}
