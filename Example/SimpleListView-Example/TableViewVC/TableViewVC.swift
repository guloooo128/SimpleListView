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

    @IBOutlet weak var tableView: SLTableView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.placeHolder.buttonsAction(placeHolderButtonsAction)
        
        if let dataSource = dataSource {
            tableView.dataList = [dataSource.map({
                CellData(model: $0, reuseIdentifier: reuseIdentifier, buttonsAction: cellButtonsAction)
            })]
            tableView.reloadData()
        } else {
            tableView.placeHolder.type = .blank
            tableView.reloadData()
        }
    }
    
    func didTapIcon(_ text: String) {
        print(text)
    }
    
    func placeHolderButtonsAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    func cellButtonsAction(_ sender: UIButton, cellData: CellData?) {
        guard let text: String = cellData?.myModel() else { return }
        print(text)
    }
}
