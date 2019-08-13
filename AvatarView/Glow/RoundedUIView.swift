//
//  RoundedUIView.swift
//  AvatarView
//
//  Created by Hemal on 13/08/19.
//  Copyright © 2019 Hemal. All rights reserved.
//

import UIKit

public enum AvatarState {
    case newUnViewed,
    unViewed,
    viewed
}

@IBDesignable class RoundedUIView: UIView {
    
    @IBInspectable var borderColor: UIColor = UIColor.red
    @IBInspectable var borderWidth: CGFloat = 1.5
    var avatarState: AvatarState = .newUnViewed
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
        self.layer.borderWidth = borderWidth
    }
    
    public func updateState() {
        self.stopGlowing()
        
        switch avatarState {
        case .newUnViewed:
            self.layer.borderColor = UIColor.red.cgColor
            self.startGlowing(color: .red, toIntensity: 1, fill: false, duration: 2)
        case .unViewed:
            self.layer.borderColor = UIColor.green.cgColor
        default:
            self.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
}

@IBDesignable class RoundedImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
        self.clipsToBounds = true
    }
}
