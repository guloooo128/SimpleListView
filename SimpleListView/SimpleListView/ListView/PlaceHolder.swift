//
//  PRListViewManager.swift
//  TableViewDemo
//
//  Created by Gollum on 2020/5/25.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit

public enum PlaceHolderType {
    
    case none
    
    case blank
    
    case noConnection
    
    case custom
    
}

public typealias ButtonsAction = (_ sender: UIButton) -> Void

open class PlaceHolderContentView: UIView {
    
    @IBOutlet weak var imageView: UIImageView?
    
    var buttonsAction: ButtonsAction?
    
    @IBAction func buttionsAction(_ sender: UIButton) {
        buttonsAction?(sender)
    }    
}



public class PlaceHolder: UIView {
    
    public var type: PlaceHolderType = .none
    
    public var blankView: PlaceHolderContentView?
    
    public var noConnectionView: PlaceHolderContentView?
    
    public var customView: PlaceHolderContentView?
    
    internal var contentView: PlaceHolderContentView? {
        switch type {
        case .blank:
            return blankView
        case .noConnection:
            return noConnectionView
        case .custom:
            return customView
        case .none:
            return nil
        }
    }
    
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func updateContentView() {
        guard let content = contentView else { return }
        subviews.forEach({ $0.removeFromSuperview() })
        addSubview(content)
        let attributes: [NSLayoutConstraint.Attribute] = [.top, .leading, .bottom, .right]
        content.translatesAutoresizingMaskIntoConstraints = false
        let constraints = attributes.map({
            NSLayoutConstraint(
                item: content,
                attribute: $0,
                relatedBy: .equal,
                toItem: self,
                attribute: $0,
                multiplier: 1,
                constant: 0)
        })
        addConstraints(constraints)
    }
    
    public func buttonsAction(_ handler: @escaping ButtonsAction) {
        blankView?.buttonsAction = handler
        noConnectionView?.buttonsAction = handler
        customView?.buttonsAction = handler
    }
    
}
