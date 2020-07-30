//
//  CollectionViewVC.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

private let reuseIdentifier = "CollectionViewCell"

class CollectionViewVC: UIViewController {

    @IBOutlet weak var collectionView: CollectionView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dataSource = dataSource {
            collectionView.dataList = [dataSource.map({CellData(model: $0, reuseIdentifier: reuseIdentifier)})]
            collectionView.reloadData()
        } else {
            collectionView.placeHolder.type = .noConnection
            collectionView.reloadData()
        }
    }
}
