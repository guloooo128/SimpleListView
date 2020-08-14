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
    
//    static let reuseIdentifier = "TableViewCell"
    
    var data: CellData?
    
    var indexPath: IndexPath!

    @IBAction func iconAction(_ sender: UIButton) {
        data?.buttonsAction?(sender, data)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
