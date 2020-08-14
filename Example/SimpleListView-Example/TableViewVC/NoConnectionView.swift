//
//  NoConnectionView.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/8/14.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

class NoConnectionView: PlaceHolderContentView {
    
    static func fromXib()-> NoConnectionView {
        return UINib(nibName: "NoConnectionView", bundle: Bundle.main)
            .instantiate(withOwner: nil, options: nil).first as! NoConnectionView
    }
    
}
