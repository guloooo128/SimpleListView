//
//  MainVC.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

let reuseIdentifier1 = "MainTableViewCell1"
let reuseIdentifier2 = "MainTableViewCell2"

class MainVC: UIViewController {

    @IBOutlet weak var tableView: MainTableView!
    
    let options = [["Simple TableView", "Blank TableView"], ["Simple CollectionView", "NoCollection CollectionView"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // !Setp 1. Set Data List
        tableView.dataList = options.enumerated().map({
            if $0.offset == 0 {
                return $0.element.map({CellData(model: $0, reuseIdentifier: reuseIdentifier1, buttonsAction: cellButtonsAction)})
            } else {
                return $0.element.map({CellData(model: $0, reuseIdentifier: reuseIdentifier2, buttonsAction: cellButtonsAction)})
            }
        })
        
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func cellButtonsAction(_ sender: UIButton, cellData: CellData?) {
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let row = tableView.indexPathForSelectedRow?.row else { return }
        if let vc = segue.destination as? TableViewVC, row == 0 {
            vc.dataSource = (0...10).map({"✨-\($0)"})
        }
        
        if let vc = segue.destination as? CollectionViewVC, row == 0 {
            vc.dataSource = (0...10).map({"🌞-\($0)"})
        }
    }
}

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = self.tableView.cellDataForRow(at: indexPath)!
        if let title: String = cellData.myModel() {
            print(title)
        }        
    }
}
