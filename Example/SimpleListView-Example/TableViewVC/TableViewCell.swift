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
    
    var data: CellData?

    @IBAction func iconAction(_ sender: Any) {
        guard let model: TableViewVM = data?.myModel() else { return }
        model.iconCallback(model.text)
    }
    
}
