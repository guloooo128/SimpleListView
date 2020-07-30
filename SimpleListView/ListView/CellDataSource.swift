//
//  ListViewCellDataSource.swift
//  CommonKit
//
//  Created by Gollum on 2020/7/29.
//  Copyright © 2020 Gollum. All rights reserved.
//

import Foundation


public protocol CellDataSource {
    
    var model: Any? { get set }
    
}

