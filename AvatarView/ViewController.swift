//
//  ViewController.swift
//  AvatarView
//
//  Created by Hemal on 11/08/19.
//  Copyright © 2019 Hemal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundView: RoundedUIView!
    @IBOutlet weak var roundView1: RoundedUIView!
    @IBOutlet weak var roundView2: RoundedUIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundView.avatarState = .newUnViewed
        roundView.updateState()
        
        roundView1.avatarState = .unViewed
        roundView1.updateState()
        
        roundView2.avatarState = .viewed
        roundView2.updateState()
    }
}



