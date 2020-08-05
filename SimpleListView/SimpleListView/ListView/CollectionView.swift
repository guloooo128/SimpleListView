//
//  PRCollectionView.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit

open class CollectionView: UICollectionView, DataSource {

    public var headerHeight: CGFloat = 0
    
    public var placeHolder: PlaceHolder = PlaceHolder()
    
    public var dataList: [[CellData]]?
    
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        dataSource = self
        configurePlaceHolder()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        dataSource = self
        configurePlaceHolder()
    }
    
    public override func reloadData() {
        prepareReloadData()
        super.reloadData()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        updatePlaceHolderFrame()
    }
}

extension CollectionView: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataList?.count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList![section].count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellData = dataList![indexPath.section][indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellData.reuseIdentifier, for: indexPath)
        if var cell = cell as? CellDataSource {
            cell.indexPath = indexPath
            cell.data = cellData
        }
        return cell
    }
}
