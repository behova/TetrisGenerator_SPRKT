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
    var blockName = String()
    
    let jBlock = [
        [0, 1, 0 ],
        [0, 1, 0 ],
        [1, 1, 0 ]
    ]
    var jVersion = 0
    
    let tBlock = [
        [0, 0, 0 ],
        [0, 1, 0 ],
        [1, 1, 1 ]
    ]
    var tVersion = 0
    
    let zBlock = [
        [0, 0, 1 ],
        [0, 1, 1 ],
        [0, 1, 0 ]
    ]
    var zVersion = 0
    
    let oBlock = [
        [1, 1, 0 ],
        [1, 1, 0 ],
        [0, 0, 0 ]
    ]
    var oVersion = 0
    
    let sBlock = [
        [1, 0, 0 ],
        [1, 1, 0 ],
        [0, 1, 0 ]
    ]
    var sVersion = 0
    
    let lBlock = [
        [0, 1, 0 ],
        [0, 1, 0 ],
        [0, 1, 1 ]
    ]
    var lVersion = 0
    
    let iBlock = [
        [1, 1, 0],
        [0, 1, 0],
        [0, 1, 0],
        ]
    var iVersion = 0
    
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
        
        switch randomArrayIndex {
        case 0 :
            blockName = "jBlock\(jVersion)"
            jVersion += 1
        case 1 :
            blockName = "tBlock\(tVersion)"
            tVersion += 1
        case 2 :
            blockName = "zBlock\(zVersion)"
            zVersion += 1
        case 3 :
            blockName = "oBlock\(oVersion)"
            oVersion += 1
        case 4 :
            blockName = "sBlock\(sVersion)"
            sVersion += 1
        case 5 :
            blockName = "lBlock\(lVersion)"
            lVersion += 1
        case 6 :
            blockName = "iBlock\(iVersion)"
            iVersion += 1
        default :
            blockName = "iBlock\(iVersion)"
            iVersion += 1
        }
        
        return randomShapeArray
    }
    
}
