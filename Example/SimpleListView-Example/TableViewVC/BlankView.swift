//
//  BlankView.swift
//  YiKao
//
//  Created by Gollum on 2020/8/11.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

class BlankView: PlaceHolderContentView {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 0.5
            button.layer.cornerRadius = 15
        }
    }
    
    static func fromXib()-> BlankView {
        return UINib(nibName: "BlankView", bundle: Bundle.main)
            .instantiate(withOwner: nil, options: nil).first as! BlankView
    }
}
