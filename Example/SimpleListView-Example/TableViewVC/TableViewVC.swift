//
//  TableViewVC.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

private let reuseIdentifier = "TableViewCell"

class TableViewVC: UIViewController {

    @IBOutlet weak var tableView: TableView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dataSource = dataSource {
            tableView.dataList = [dataSource.map({CellData(model: $0, reuseIdentifier: reuseIdentifier)})]
            tableView.reloadData()
        } else {
            tableView.placeHolder.type = .blank
            tableView.reloadData()
        }
    }
}
