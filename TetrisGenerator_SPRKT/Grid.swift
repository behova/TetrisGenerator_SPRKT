//
//  Grid.swift
//  TetrisGenerator_SPRKT
//
//  Created by iMac on 4/29/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class Grid {
    
    var rows:Int
    var cols:Int
    var blockSize = ScreenSize.width / 20
    init(rows:Int, cols:Int) {
        self.rows = rows
        self.cols = cols
    
    }
    
    func deployGrid(){
        
    }
    
    func gridPosition() {
        
    }
    
//    func gridPosition(row:Int, col:Int) -> CGPoint {
//        let x = layerPosition.x + (CGFloat(col) * blockSize) + (blockSize/2)
//        let y = layerPosition.y - ((CGFloat(row) * blockSize) + (blockSize/2))
//        return CGPoint(x: x, y: y)
//    }
    
    

   // translates grid postioning to cgpoints
    func gridPosition(row:Int, col:Int) -> CGPoint {
        
        let x = CGFloat(col) * blockSize - (blockSize * CGFloat(cols)) / 2.0
        let y = CGFloat(rows - row - 1) * blockSize - (blockSize * CGFloat(rows)) / 2.0 
        return CGPoint(x:x, y:y)
    }
}
