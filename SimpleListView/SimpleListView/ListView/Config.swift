//
//  ListViewConfig.swift
//  CommonKit
//
//  Created by Gollum on 2020/7/29.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit

public class Config {
    
    public static let shared = Config()
    
    public var blankView: PlaceHolderContentView?
       
    public var noConnectionView: PlaceHolderContentView?
    
    public var customView: PlaceHolderContentView?
    
    private init() {}
    
    
}
