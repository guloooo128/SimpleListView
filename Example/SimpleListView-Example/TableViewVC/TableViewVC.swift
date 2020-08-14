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

class TableViewVC: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: TableView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.placeHolder.buttonsAction(placeHolderButtonsAction)
        
        if let dataSource = dataSource {
            tableView.dataList = [dataSource.map({CellData(model: TableViewVM(text: $0, iconCallback: didTapIcon), reuseIdentifier: reuseIdentifier)})]
            tableView.reloadData()
        } else {
            tableView.placeHolder.type = .noConnection
            tableView.reloadData()
        }
    }
    
    func didTapIcon(_ text: String) {
        print(text)
    }
    
    func placeHolderButtonsAction(_ sender: UIButton) {
        print(sender.tag)
    }
}
