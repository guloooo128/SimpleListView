//
//  ViewModel.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import Foundation
import UIKit

public protocol DataSource where Self: UIScrollView {
    
    var dataList: [[CellData]]? { set get }
    
    var placeHolder: PlaceHolder { set get }
    
    var headerHeight: CGFloat { get }
    
    func configurePlaceHolder()
    
    func prepareReloadData()
    
    func updatePlaceHolderFrame()
    
    func cellDataForRow(at indexPath: IndexPath) -> CellData?
}

extension DataSource {
    public func configurePlaceHolder() {
        placeHolder.isHidden = true
        addSubview(placeHolder)
        placeHolder.blankView = Config.shared.blankView
        placeHolder.noConnectionView = Config.shared.noConnectionView
        placeHolder.customView = Config.shared.customView
    }
    
    public func prepareReloadData() {
        DispatchQueue.main.async {
            if self.placeHolder.contentView == nil {
                self.placeHolder.isHidden = true
            } else if let list = self.dataList, list.count > 0 {
                self.placeHolder.isHidden = true
            } else {
                self.placeHolder.isHidden = false
                self.placeHolder.updateContentView()
                self.setNeedsLayout()
            }
        }
    }
    
    public func updatePlaceHolderFrame() {
        DispatchQueue.main.async {
            guard !self.placeHolder.isHidden else { return }
            let rect = CGRect(
                x: 0,
                y: self.headerHeight,
                width: self.bounds.width,
                height: self.bounds.height - self.headerHeight)
            
            if self.placeHolder.frame != rect {
                self.placeHolder.frame = rect
            }
        }
    }
    
    public func cellDataForRow(at indexPath: IndexPath) -> CellData? {
        guard let list = dataList else { return nil }
        if list.count > indexPath.section, list[indexPath.section].count > indexPath.row {
            return list[indexPath.section][indexPath.row]
        } else {
            return nil
        }
    }
}

public protocol CellDataSource {
    
    var data: CellData? { get set }
    
    var indexPath: IndexPath! { get set }
}

