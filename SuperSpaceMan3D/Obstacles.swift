//
//  Obstacles.swift
//  SuperSpaceMan3D
//
//  Created by Romy Ilano on 4/18/18.
//  Copyright © 2018 Romy Ilano. All rights reserved.
//

import UIKit
import SceneKit

class Obstacles: NSObject {
    class func PyramidNode() -> SCNNode {
        let pyramid = SCNPyramid(width: 10.0, height: 20.0, length: 10.0)
        let pyramidNode = SCNNode(geometry: pyramid)
        pyramidNode.name = "pyramid"
        
        let position = SCNVector3Make(30, 0, -40)
        pyramidNode.position = position
        pyramidNode.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        pyramidNode.geometry?.firstMaterial?.shininess = 1.0
        
        return pyramidNode
    }
}
