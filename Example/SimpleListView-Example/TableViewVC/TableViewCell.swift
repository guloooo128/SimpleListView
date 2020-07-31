//
//  TableViewCell.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/31.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

class TableViewCell: UITableViewCell, CellDataSource  {
    
    var model: Any?
    
    @IBAction func iconAction(_ sender: Any) {
        guard let model = model as? TableViewVM else { return }
        model.iconCallback(model.text)
    }
    
}
