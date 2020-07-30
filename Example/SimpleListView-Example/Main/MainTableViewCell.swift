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
    
    // !Setp 2. Convert data type.
    var model: Any? {
        didSet {
            guard let model = model as? String else { return }
            textLabel?.text = model
        }
    }

}
