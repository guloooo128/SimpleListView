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
    
    public var blankView: UIView?
       
    public var noConnectionView: UIView?
    
    public var customView: UIView?
    
    private init() {}
    
    
}
