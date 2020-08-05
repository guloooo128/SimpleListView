//
//  PRTableView.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit


open class TableView: UITableView, DataSource {
    
    public var headerHeight: CGFloat {
        return tableHeaderView?.bounds.height ?? 0
    }
    
    public var placeHolder: PlaceHolder = PlaceHolder()
    
    public var dataList: [[CellData]]?
    
    override public init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        dataSource = self
        tableFooterView = UIView()
        configurePlaceHolder()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        dataSource = self
        tableFooterView = UIView()
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

extension TableView: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return dataList?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList![section].count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = dataList![indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellData.reuseIdentifier, for: indexPath)
        if var cell = cell as? CellDataSource {
            cell.indexPath = indexPath
            cell.data = cellData            
        }
        return cell
    }
}
