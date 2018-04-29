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
        
        // sets global index so texture matches block shape
        let chosenIndex = arrayGen.chosenIndex
        
        //retrieves spritenodes with textures that match shape type
        let texture = shapeSprite.retrieveTexture(chosenIndex: chosenIndex)
        
        //generates spritenodes with proper locations
        let shape = generator.generateFromArray(shapeArrayInt: shapeArray, shapeSprite: texture)
        
        for x in shape {
            addChild(x)
        }
    }
    
    override func didMove(to view: SKView) {
        backgroundColor =  .cyan
        addShape()
        
    }
}
