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
    
    var indexPath: IndexPath!

    @IBAction func iconAction(_ sender: Any) {
        guard let model: TableViewVM = data?.myModel() else { return }
        model.iconCallback(model.text)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
