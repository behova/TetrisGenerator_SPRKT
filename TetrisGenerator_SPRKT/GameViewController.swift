//
//  GameViewController.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/26/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    let skview = SKView()
    
    override func viewDidLoad() {
        
        view.addSubview(skview)
        
        view.fillSuperView()
    }
    
}
