//
//  GameViewController.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/26/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    let skview: SKView = {
        let view = SKView()
        return view
    }()

    override func viewDidLoad() {
        
        view.addSubview(skview)
        skview.fillSuperView()
        
        let mainscene = MainSKScene(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
        skview.presentScene(mainscene)
        skview.ignoresSiblingOrder = true
    }
    
}
