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
    
    let matrix = [
        [0, 1, 0 ],
        [0, 1, 0 ],
        [1, 1, 0 ]
    ]
    
    var matrixSprite: SKNode = {
        var sprite = SKSpriteNode(imageNamed: "crate_43")
        
        return sprite
    }()
    
    func generateFromArray() -> [SKSpriteNode] {
        var blockArray = [SKSpriteNode]()
        for x in 0 ..< matrix.count {
            for y in 0 ..< matrix[x].count {
                if matrix[x][y] > 0 {
                    
                    let block = matrixSprite.copy() as! SKSpriteNode
                    block.name = "matrixSprite\(y)"
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
