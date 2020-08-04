//
//  MainTableViewCell.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

class MainTableViewCell: UITableViewCell, CellDataSource {
    var data: CellData? {
        didSet {
            if let model: String = data?.myModel() {
                textLabel?.text = model
            }
//            model
//            guard let model = model as? String else { return }
//
        }
    }
    
    
//    // !Setp 2. Convert data type.
//    var model: Any?
}
