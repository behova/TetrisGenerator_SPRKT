//
//  Generate.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/27/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class Generate: SKNode {
    
    let width = ScreenSize.width / 20
    
    func generateFromArray(shapeArrayInt: [[Int]], shapeSprite: SKNode) -> [SKSpriteNode] {
        var blockArray = [SKSpriteNode]()
        for x in 0 ..< shapeArrayInt.count {
            for y in 0 ..< shapeArrayInt[x].count {
                if shapeArrayInt[x][y] > 0 {
                    
                    let block = shapeSprite.copy() as! SKSpriteNode
                    // TODO: Revisit naming individual sprites
                    //block.name = "\(shapeSprite.name)\(y)"
                    // try to make position integers?
                    block.position = CGPoint(x: CGFloat(x + 1) * width, y: CGFloat(y + 1) * width)
                    block.size = CGSize(width: width, height: width)
                    blockArray.append(block)
                }
            }
        }
        return blockArray
    }
    
}
