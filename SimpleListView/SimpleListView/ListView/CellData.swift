//
//  PRTableViewCell.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/21.
//  Copyright © 2020 Gollum. All rights reserved.
//

import Foundation
import UIKit

public typealias CellButtonsAction = (_ sender: UIButton, _ model: CellData?) -> Void

public class CellData {

    public var model: Any

    public var reuseIdentifier: String
    
    public var buttonsAction: CellButtonsAction?
    
    public init(model: Any, reuseIdentifier: String, buttonsAction: CellButtonsAction? = nil) {
        self.model = model
        self.reuseIdentifier = reuseIdentifier
        self.buttonsAction = buttonsAction
    }
    
    public func myModel<T>() -> T? {
        return model as? T
    }
}
