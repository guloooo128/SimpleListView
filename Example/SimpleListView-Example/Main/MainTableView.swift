//
//  MainTableView.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

class MainTableView: SLTableView {

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Table View" : "Colleciton View"
    }
}
