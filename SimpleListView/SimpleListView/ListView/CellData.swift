//
//  PRTableViewCell.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import Foundation

public class CellData {

    public var model: Any

    public var reuseIdentifier: String
    
    public init(model: Any, reuseIdentifier: String) {
        
        self.model = model
        
        self.reuseIdentifier = reuseIdentifier
        
    }
    
    public func myModel<T>() -> T? {
        return model as? T
    }
}
