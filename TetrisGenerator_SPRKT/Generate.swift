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
    var blockNames = [SKSpriteNode]()
    var currentBlockSet = 0
    
    func generateFromArray(shapeArrayInt: [[Int]], shapeSprite: SKNode, named: String) -> [SKSpriteNode] {
        var blockNum = 1
        var blockArray = [SKSpriteNode]()
        for x in 0 ..< shapeArrayInt.count {
            for y in 0 ..< shapeArrayInt[x].count {
                if shapeArrayInt[x][y] > 0 {
                    
                    let block = shapeSprite.copy() as! SKSpriteNode
                    
                    // names individual sprites using propeties from shapeArrays class
                    block.name = "\(named)_\(blockNum)"
                    
                    // try to make position integers?
                    block.position = CGPoint(x: CGFloat(x + 1) * width, y: CGFloat(y + 1) * width)
                    block.size = CGSize(width: width, height: width)
                    
                    blockNum += 1
                    currentBlockSet += 1
                    
                    blockArray.append(block)
                    blockNames.append(block)
                }
            }
        }
        return blockArray
    }
    
}
