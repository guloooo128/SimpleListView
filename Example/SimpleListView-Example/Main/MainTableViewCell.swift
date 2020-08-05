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
    
    var indexPath: IndexPath! {
        didSet {
            print(indexPath.item)
        }
    }
    
    var data: CellData? {
        didSet {
            if let model: String = data?.myModel() {
                textLabel?.text = model
            }
        }
    }
}
