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
    let arrayGen = ShapeArrays()
    let shapeSprite = ShapeTextures()
    
    func addShape() {
        // retrieves random array for generator
        let shapeArray = arrayGen.retrieveRandomShapeArray()
        
        // sets name and version number into variable for generator
        let blockName = arrayGen.blockName
        
        // sets global index so texture matches block shape
        let chosenIndex = arrayGen.chosenIndex
        
        //retrieves spritenodes with textures that match shape type
        let texture = shapeSprite.retrieveTexture(chosenIndex: chosenIndex)
        
        //generates spritenodes with proper locations
        let shape = generator.generateFromArray(shapeArrayInt: shapeArray, shapeSprite: texture, named: blockName)
        
        for x in shape {
            addChild(x)
        }
    }
    
    func currentBlocks() ->[SKSpriteNode] {
        //reads current block index from generator class and appends the last four to an array
        let currentIndex = generator.currentBlockSet
        var blockArray = [SKSpriteNode]()

        blockArray.append(generator.blockNames[currentIndex - 1])
        blockArray.append(generator.blockNames[currentIndex - 2])
        blockArray.append(generator.blockNames[currentIndex - 3])
        blockArray.append(generator.blockNames[currentIndex - 4])
        
        return blockArray
    }
    
    func descend() {
        let names = currentBlocks()
        for name in names {
            name.run(SKAction.moveBy(x: 0.0, y: -10.0, duration: 1.0))
            
        }
    }
    
    
    override func didMove(to view: SKView) {
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        backgroundColor =  .cyan
        addShape()
        
    }
    override func update(_ currentTime: TimeInterval) {
        descend()
    }
}
