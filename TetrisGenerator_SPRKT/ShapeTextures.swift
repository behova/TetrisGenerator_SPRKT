//
//  ShapeTextures.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/29/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class ShapeTextures {
    
    var jBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "jShape")
        
        return sprite
    }()
    
    var tBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "tShape")
        
        return sprite
    }()
    
    var zBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "zShape")
        
        return sprite
    }()
    
    var oBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "oShape")
        
        return sprite
    }()
    
    var sBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "sShape")
        
        return sprite
    }()
    
    var lBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "lShape")
        
        return sprite
    }()
    
    var iBlock: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "iShape")
        
        return sprite
    }()
    
    func retrieveTexture(chosenIndex: Int) -> SKNode {
        
        var blocks = [SKNode]()
        blocks.append(jBlock)
        blocks.append(tBlock)
        blocks.append(zBlock)
        blocks.append(oBlock)
        blocks.append(sBlock)
        blocks.append(lBlock)
        blocks.append(iBlock)
        
        //let randomArrayIndex = Int(arc4random_uniform(UInt32(blocks.count)))
        //let randomShapeArray = blocks[randomArrayIndex]
        
        let chosenIndex = chosenIndex
        
        return blocks[chosenIndex]
    }
}
