//
//  MainSKScene.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/26/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class MainSKScene: SKScene {
    
    let generator = Generate()
    
    func addShape() {
        
        let shape = generator.generateFromArray()
        
        for x in shape {
            addChild(x)
        }
    }
    
    override func didMove(to view: SKView) {
        backgroundColor =  .cyan
        addShape()
        
    }
}
