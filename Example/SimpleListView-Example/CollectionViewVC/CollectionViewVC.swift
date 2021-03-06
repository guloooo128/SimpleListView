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

    @IBOutlet weak var collectionView: SLCollectionView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.placeHolder.buttonsAction(placeHolderButtonsAction)
        
        if let dataSource = dataSource {
            collectionView.dataList = [dataSource.map({CellData(model: $0, reuseIdentifier: reuseIdentifier, buttonsAction: cellButtonsAction)})]
            collectionView.reloadData()
        } else {
            collectionView.placeHolder.type = .noConnection
            collectionView.reloadData()
        }
    }
    
    func placeHolderButtonsAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    func cellButtonsAction(_ sender: UIButton, cellData: CellData?) {
        
    }
}
