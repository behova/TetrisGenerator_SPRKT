//
//  ShapeArrays.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/29/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import Foundation

class ShapeArrays {
    
    var chosenIndex = Int()
    
    let jBlock = [
        [0, 1, 0 ],
        [0, 1, 0 ],
        [1, 1, 0 ]
    ]
    
    let tBlock = [
        [0, 0, 0 ],
        [0, 1, 0 ],
        [1, 1, 1 ]
    ]
    
    let zBlock = [
        [0, 0, 1 ],
        [0, 1, 1 ],
        [0, 1, 0 ]
    ]
    
    let oBlock = [
        [1, 1, 0 ],
        [1, 1, 0 ],
        [0, 0, 0 ]
    ]
    
    let sBlock = [
        [1, 0, 0 ],
        [1, 1, 0 ],
        [0, 1, 0 ]
    ]
    
    let lBlock = [
        [0, 1, 0 ],
        [0, 1, 0 ],
        [0, 1, 1 ]
    ]
    
    let iBlock = [
        [0, 1, 0],
        [0, 1, 0],
        [0, 1, 0],
        ]
    
    func retrieveRandomShapeArray() -> [[Int]] {

        var blocks = [[[Int]]]()
        blocks.append(jBlock)
        blocks.append(tBlock)
        blocks.append(zBlock)
        blocks.append(oBlock)
        blocks.append(sBlock)
        blocks.append(lBlock)
        blocks.append(iBlock)
        
        let randomArrayIndex = Int(arc4random_uniform(UInt32(blocks.count)))
        let randomShapeArray = blocks[randomArrayIndex]
        
        chosenIndex = randomArrayIndex
        
        return randomShapeArray
    }
    
}
