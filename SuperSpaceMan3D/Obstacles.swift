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
    
    class func GlobeNode() -> SCNNode {
        let globe = SCNSphere(radius: 15.0)
        let globeNode = SCNNode(geometry: globe)
        globeNode.position = SCNVector3Make(20, 40, -50)
        globeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        return globeNode
    }
    
    class func BoxNode() -> SCNNode {
        let box = SCNBox(width: 10, height: 10, length: 10, chamferRadius: 0)
        let boxNode = SCNNode(geometry: box)
        boxNode.geometry?.firstMaterial?.diffuse.contents = UIColor.brown
        boxNode.position = SCNVector3Make(0, 10, -20)
        return boxNode
    }
    
    class func CylinderNode() -> SCNNode {
        let cynlinderNode = SCNNode(geometry: SCNCylinder(radius: 3, height: 12))
        cynlinderNode.geometry?.firstMaterial?.diffuse.contents = UIColor.green
        cynlinderNode.position = SCNVector3Make(14, 0, -25)
        return cynlinderNode
    }
}
